package androidx.room;

import android.content.Context;
import androidx.room.b.d;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
/* loaded from: classes-dex2jar.jar:androidx/room/m.class */
final class m implements SupportSQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    DatabaseConfiguration f5593a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f5594b;

    /* renamed from: c  reason: collision with root package name */
    private final String f5595c;

    /* renamed from: d  reason: collision with root package name */
    private final File f5596d;
    private final int e;
    private final SupportSQLiteOpenHelper f;
    private boolean g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Context context, String str, File file, int i, SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        this.f5594b = context;
        this.f5595c = str;
        this.f5596d = file;
        this.e = i;
        this.f = supportSQLiteOpenHelper;
    }

    private void a(File file) throws IOException {
        ReadableByteChannel readableByteChannel;
        if (this.f5595c != null) {
            readableByteChannel = Channels.newChannel(this.f5594b.getAssets().open(this.f5595c));
        } else if (this.f5596d != null) {
            readableByteChannel = new FileInputStream(this.f5596d).getChannel();
        } else {
            throw new IllegalStateException("copyFromAssetPath and copyFromFile == null!");
        }
        File createTempFile = File.createTempFile("room-copy-helper", ".tmp", this.f5594b.getCacheDir());
        createTempFile.deleteOnExit();
        d.a(readableByteChannel, new FileOutputStream(createTempFile).getChannel());
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Failed to create directories for " + file.getAbsolutePath());
        } else if (!createTempFile.renameTo(file)) {
            throw new IOException("Failed to move intermediate file (" + createTempFile.getAbsolutePath() + ") to destination (" + file.getAbsolutePath() + ").");
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public final String a() {
        return this.f.a();
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public final void a(boolean z) {
        this.f.a(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0094 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0059 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.sqlite.db.b b() {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.m.b():androidx.sqlite.db.b");
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            this.f.close();
            this.g = false;
        }
    }
}
