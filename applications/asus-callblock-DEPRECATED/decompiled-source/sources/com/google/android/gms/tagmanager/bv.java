package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.c;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.j;
import com.google.android.gms.internal.k;
import com.google.android.gms.internal.u;
import com.google.android.gms.internal.v;
import com.google.android.gms.tagmanager.am;
import com.google.android.gms.tagmanager.bj;
import com.google.android.gms.tagmanager.dd;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/bv.class */
public final class bv implements dd.f {

    /* renamed from: a  reason: collision with root package name */
    final String f4317a;

    /* renamed from: b  reason: collision with root package name */
    am<a.C0122a> f4318b;
    private final Context c;
    private final ExecutorService d = Executors.newSingleThreadExecutor();

    /* JADX INFO: Access modifiers changed from: package-private */
    public bv(Context context, String str) {
        this.c = context;
        this.f4317a = str;
    }

    private static c.C0126c a(ByteArrayOutputStream byteArrayOutputStream) {
        c.C0126c cVar;
        try {
            k.a a2 = cn.a(ag.a(new JSONObject(byteArrayOutputStream.toString("UTF-8"))));
            c.d a3 = c.C0126c.a();
            for (int i = 0; i < a2.d.length; i++) {
                a3.a(c.a.a().a(i.INSTANCE_NAME.toString(), a2.d[i]).a(i.FUNCTION.toString(), cn.a(db.d())).a(db.e(), a2.e[i]).a());
            }
            cVar = a3.a();
        } catch (UnsupportedEncodingException e) {
            an.d("Failed to convert binary resource to string for JSON parsing; the file format is not UTF-8 format.");
            cVar = null;
        } catch (JSONException e2) {
            an.b("Failed to extract the container from the resource file. Resource is a UTF-8 encoded string but doesn't contain a JSON container");
            cVar = null;
        }
        return cVar;
    }

    private static c.C0126c a(byte[] bArr) {
        c.C0126c cVar;
        try {
            c.C0126c a2 = c.a((j.f) v.a(new j.f(), bArr, bArr.length));
            cVar = a2;
            if (a2 != null) {
                an.e("The container was successfully loaded from the resource (using binary file)");
                cVar = a2;
            }
        } catch (c.g e) {
            an.b("The resource file is invalid. The container from the binary file is invalid");
            cVar = null;
        } catch (u e2) {
            an.a("The resource file is corrupted. The container cannot be extracted from the binary file");
            cVar = null;
        }
        return cVar;
    }

    @Override // com.google.android.gms.tagmanager.dd.f
    public final c.C0126c a(int i) {
        c.C0126c cVar;
        try {
            InputStream openRawResource = this.c.getResources().openRawResource(i);
            String valueOf = String.valueOf(this.c.getResources().getResourceName(i));
            an.e(new StringBuilder(String.valueOf(valueOf).length() + 66).append("Attempting to load a container from the resource ID ").append(i).append(" (").append(valueOf).append(")").toString());
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                c.a(openRawResource, byteArrayOutputStream);
                cVar = a(byteArrayOutputStream);
                if (cVar != null) {
                    an.e("The container was successfully loaded from the resource (using JSON file format)");
                } else {
                    cVar = a(byteArrayOutputStream.toByteArray());
                }
            } catch (IOException e) {
                String valueOf2 = String.valueOf(this.c.getResources().getResourceName(i));
                an.b(new StringBuilder(String.valueOf(valueOf2).length() + 67).append("Error reading the default container with resource ID ").append(i).append(" (").append(valueOf2).append(")").toString());
                cVar = null;
            }
        } catch (Resources.NotFoundException e2) {
            an.b(new StringBuilder(98).append("Failed to load the container. No default container resource found with the resource ID ").append(i).toString());
            cVar = null;
        }
        return cVar;
    }

    @Override // com.google.android.gms.common.api.d
    public final void a() {
        synchronized (this) {
            this.d.shutdown();
        }
    }

    @Override // com.google.android.gms.tagmanager.dd.f
    public final void a(final a.C0122a aVar) {
        this.d.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.bv.2
            @Override // java.lang.Runnable
            public final void run() {
                bv.this.b(aVar);
            }
        });
    }

    @Override // com.google.android.gms.tagmanager.dd.f
    public final void a(am<a.C0122a> amVar) {
        this.f4318b = amVar;
    }

    @Override // com.google.android.gms.tagmanager.dd.f
    public final void b() {
        this.d.execute(new Runnable() { // from class: com.google.android.gms.tagmanager.bv.1
            @Override // java.lang.Runnable
            public final void run() {
                FileInputStream fileInputStream;
                a.C0122a aVar;
                bv bvVar = bv.this;
                if (bvVar.f4318b == null) {
                    throw new IllegalStateException("Callback must be set before execute");
                }
                an.e("Attempting to load resource from disk");
                if ((bj.a().f4303a == bj.a.CONTAINER || bj.a().f4303a == bj.a.CONTAINER_DEBUG) && bvVar.f4317a.equals(bj.a().f4304b)) {
                    am<a.C0122a> amVar = bvVar.f4318b;
                    int i = am.a.f4283a;
                    amVar.a();
                    return;
                }
                try {
                    try {
                        fileInputStream = new FileInputStream(bvVar.c());
                        try {
                            try {
                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                c.a(fileInputStream, byteArrayOutputStream);
                                byte[] byteArray = byteArrayOutputStream.toByteArray();
                                aVar = (a.C0122a) v.a(new a.C0122a(), byteArray, byteArray.length);
                            } catch (IllegalArgumentException e) {
                                am<a.C0122a> amVar2 = bvVar.f4318b;
                                int i2 = am.a.f4284b;
                                amVar2.a();
                                an.b("Failed to read the resource from disk. The resource is inconsistent");
                                try {
                                    fileInputStream.close();
                                } catch (IOException e2) {
                                    an.b("Error closing stream for reading resource from disk");
                                }
                            }
                        } catch (IOException e3) {
                            am<a.C0122a> amVar3 = bvVar.f4318b;
                            int i3 = am.a.f4284b;
                            amVar3.a();
                            an.b("Failed to read the resource from disk");
                            try {
                                fileInputStream.close();
                            } catch (IOException e4) {
                                an.b("Error closing stream for reading resource from disk");
                            }
                        }
                        if (aVar.f4094b == null && aVar.c == null) {
                            throw new IllegalArgumentException("Resource and SupplementedResource are NULL.");
                        }
                        bvVar.f4318b.a(aVar);
                        try {
                            fileInputStream.close();
                        } catch (IOException e5) {
                            an.b("Error closing stream for reading resource from disk");
                        }
                        an.e("The Disk resource was successfully read.");
                    } catch (FileNotFoundException e6) {
                        an.d("Failed to find the resource in the disk");
                        am<a.C0122a> amVar4 = bvVar.f4318b;
                        int i4 = am.a.f4283a;
                        amVar4.a();
                    }
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e7) {
                        an.b("Error closing stream for reading resource from disk");
                    }
                    throw th;
                }
            }
        });
    }

    /* JADX WARN: Finally extract failed */
    final boolean b(a.C0122a aVar) {
        FileOutputStream fileOutputStream;
        boolean z = false;
        File c = c();
        try {
            fileOutputStream = new FileOutputStream(c);
        } catch (FileNotFoundException e) {
            an.a("Error opening resource file for writing");
        }
        try {
            try {
                fileOutputStream.write(v.a(aVar));
                try {
                    fileOutputStream.close();
                } catch (IOException e2) {
                    an.b("error closing stream for writing resource to disk");
                }
                z = true;
            } catch (IOException e3) {
                an.b("Error writing resource to disk. Removing resource from disk.");
                c.delete();
                try {
                    fileOutputStream.close();
                } catch (IOException e4) {
                    an.b("error closing stream for writing resource to disk");
                }
            }
            return z;
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (IOException e5) {
                an.b("error closing stream for writing resource to disk");
            }
            throw th;
        }
    }

    final File c() {
        String valueOf = String.valueOf("resource_");
        String valueOf2 = String.valueOf(this.f4317a);
        return new File(this.c.getDir("google_tagmanager", 0), valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
    }
}
