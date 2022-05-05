package com.uphyca.stetho_realm;

import android.database.sqlite.SQLiteException;
import com.facebook.stetho.inspector.helper.ChromePeerManager;
import com.facebook.stetho.inspector.helper.PeerRegistrationListener;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcPeer;
import com.uphyca.stetho_realm.Database;
import io.realm.RealmConfiguration;
import io.realm.exceptions.RealmError;
import io.realm.internal.SharedRealm;
import io.realm.internal.Table;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:com/uphyca/stetho_realm/RealmPeerManager.class */
public class RealmPeerManager extends ChromePeerManager {
    private static final Pattern SELECT_PATTERN = Pattern.compile("SELECT[ \\t]+rowid,[ \\t]+\\*[ \\t]+FROM \"([^\"]+)\"");
    private static final String TABLE_PREFIX = "class_";
    private byte[] defaultEncryptionKey;
    private Map<String, byte[]> encryptionKeys;
    private final String packageName;
    private final RealmFilesProvider realmFilesProvider;

    /* loaded from: classes2-dex2jar.jar:com/uphyca/stetho_realm/RealmPeerManager$ExecuteResultHandler.class */
    public interface ExecuteResultHandler<T> {
        T handleInsert(long j) throws SQLiteException;

        T handleRawQuery() throws SQLiteException;

        T handleSelect(Table table, boolean z) throws SQLiteException;

        T handleUpdateDelete(int i) throws SQLiteException;
    }

    public RealmPeerManager(String str, RealmFilesProvider realmFilesProvider, byte[] bArr, Map<String, byte[]> map) {
        this.packageName = str;
        this.realmFilesProvider = realmFilesProvider;
        this.defaultEncryptionKey = bArr;
        this.encryptionKeys = map;
        setListener(new PeerRegistrationListener() { // from class: com.uphyca.stetho_realm.RealmPeerManager.1
            @Override // com.facebook.stetho.inspector.helper.PeerRegistrationListener
            public void onPeerRegistered(JsonRpcPeer jsonRpcPeer) {
                RealmPeerManager.this.bootstrapNewPeer(jsonRpcPeer);
            }

            @Override // com.facebook.stetho.inspector.helper.PeerRegistrationListener
            public void onPeerUnregistered(JsonRpcPeer jsonRpcPeer) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bootstrapNewPeer(JsonRpcPeer jsonRpcPeer) {
        for (File file : tidyDatabaseList(this.realmFilesProvider.getDatabaseFiles())) {
            Database.DatabaseObject databaseObject = new Database.DatabaseObject();
            databaseObject.f314id = file.getPath();
            databaseObject.name = file.getName();
            databaseObject.domain = this.packageName;
            databaseObject.version = "N/A";
            Database.AddDatabaseEvent addDatabaseEvent = new Database.AddDatabaseEvent();
            addDatabaseEvent.database = databaseObject;
            jsonRpcPeer.invokeMethod("Database.addDatabase", addDatabaseEvent, null);
        }
    }

    private byte[] getEncryptionKey(String str) {
        String name = new File(str).getName();
        return this.encryptionKeys.containsKey(name) ? this.encryptionKeys.get(name) : this.defaultEncryptionKey;
    }

    private Class<?> getRealmErrorClass() {
        try {
            return Class.forName("io.realm.exceptions.RealmError");
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    private SharedRealm openSharedRealm(String str) {
        return openSharedRealm(str, null);
    }

    private SharedRealm openSharedRealm(String str, @Nullable SharedRealm.Durability durability) {
        byte[] encryptionKey = getEncryptionKey(str);
        RealmConfiguration.Builder builder = new RealmConfiguration.Builder();
        if (durability == SharedRealm.Durability.MEM_ONLY) {
            builder.inMemory();
        }
        if (encryptionKey != null) {
            builder.encryptionKey(encryptionKey);
        }
        try {
            return SharedRealm.getInstance(builder.build());
        } catch (RealmError e) {
            if (durability == null) {
                builder.inMemory();
                return SharedRealm.getInstance(builder.build());
            }
            throw e;
        }
    }

    static List<File> tidyDatabaseList(List<File> list) {
        ArrayList arrayList = new ArrayList();
        for (File file : list) {
            arrayList.add(file);
        }
        return arrayList;
    }

    public <T> T executeSQL(String str, String str2, ExecuteResultHandler<T> executeResultHandler) {
        SharedRealm openSharedRealm = openSharedRealm(str);
        try {
            Matcher matcher = SELECT_PATTERN.matcher(str2.trim());
            if (matcher.matches()) {
                return executeResultHandler.handleSelect(openSharedRealm.getTable(matcher.group(1)), true);
            }
            openSharedRealm.close();
            return null;
        } finally {
            openSharedRealm.close();
        }
    }

    public List<String> getDatabaseTableNames(String str, boolean z) {
        ArrayList arrayList = new ArrayList();
        SharedRealm openSharedRealm = openSharedRealm(str);
        int i = 0;
        while (true) {
            try {
                if (i >= openSharedRealm.size()) {
                    return arrayList;
                }
                String tableName = openSharedRealm.getTableName(i);
                if (z || tableName.startsWith(TABLE_PREFIX)) {
                    arrayList.add(tableName);
                }
                i++;
            } finally {
                openSharedRealm.close();
            }
        }
    }
}
