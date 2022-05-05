package com.uphyca.stetho_realm.delegate;

import com.facebook.stetho.inspector.jsonrpc.JsonRpcException;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcPeer;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcResult;
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsDomain;
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsMethod;
import com.facebook.stetho.json.ObjectMapper;
import com.facebook.stetho.json.annotation.JsonProperty;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uphyca/stetho_realm/delegate/Database.class */
public class Database implements ChromeDevtoolsDomain {
    private final com.facebook.stetho.inspector.protocol.module.Database database;
    private final Pattern databaseNamePattern;
    private final ObjectMapper objectMapper = new ObjectMapper();
    private final com.uphyca.stetho_realm.Database realmDatabase;

    /* loaded from: classes-dex2jar.jar:com/uphyca/stetho_realm/delegate/Database$ExecuteSQLRequest.class */
    private static class ExecuteSQLRequest {
        @JsonProperty(required = true)
        public String databaseId;
        @JsonProperty(required = true)
        public String query;

        private ExecuteSQLRequest() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/uphyca/stetho_realm/delegate/Database$GetDatabaseTableNamesRequest.class */
    private static class GetDatabaseTableNamesRequest {
        @JsonProperty(required = true)
        public String databaseId;

        private GetDatabaseTableNamesRequest() {
        }
    }

    public Database(com.facebook.stetho.inspector.protocol.module.Database database, com.uphyca.stetho_realm.Database database2, Pattern pattern) {
        this.database = database;
        this.realmDatabase = database2;
        this.databaseNamePattern = pattern;
    }

    @ChromeDevtoolsMethod
    public void disable(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        this.database.disable(jsonRpcPeer, jSONObject);
        this.realmDatabase.disable(jsonRpcPeer, jSONObject);
    }

    @ChromeDevtoolsMethod
    public void enable(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        this.database.enable(jsonRpcPeer, jSONObject);
        this.realmDatabase.enable(jsonRpcPeer, jSONObject);
    }

    @ChromeDevtoolsMethod
    public JsonRpcResult executeSQL(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        return this.databaseNamePattern.matcher(((ExecuteSQLRequest) this.objectMapper.convertValue(jSONObject, ExecuteSQLRequest.class)).databaseId).find() ? this.realmDatabase.executeSQL(jsonRpcPeer, jSONObject) : this.database.executeSQL(jsonRpcPeer, jSONObject);
    }

    @ChromeDevtoolsMethod
    public JsonRpcResult getDatabaseTableNames(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) throws JsonRpcException {
        return this.databaseNamePattern.matcher(((GetDatabaseTableNamesRequest) this.objectMapper.convertValue(jSONObject, GetDatabaseTableNamesRequest.class)).databaseId).find() ? this.realmDatabase.getDatabaseTableNames(jsonRpcPeer, jSONObject) : this.database.getDatabaseTableNames(jsonRpcPeer, jSONObject);
    }
}
