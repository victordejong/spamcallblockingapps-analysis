package com.dropbox.core.v2;

import com.amazonaws.services.s3.util.Mimetypes;
import com.dropbox.core.BadResponseException;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxWrappedException;
import com.dropbox.core.InvalidAccessTokenException;
import com.dropbox.core.NetworkIOException;
import com.dropbox.core.RetryException;
import com.dropbox.core.e;
import com.dropbox.core.h;
import com.dropbox.core.http.a;
import com.dropbox.core.i;
import com.dropbox.core.oauth.DbxOAuthException;
import com.dropbox.core.util.d;
import com.dropbox.core.v2.auth.b;
import com.dropbox.core.v2.c.a;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonProcessingException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import okhttp3.internal.ws.WebSocketProtocol;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c.class */
public abstract class c {

    /* renamed from: c  reason: collision with root package name */
    private static final JsonFactory f17946c = new JsonFactory();

    /* renamed from: d  reason: collision with root package name */
    private static final Random f17947d = new Random();

    /* renamed from: a  reason: collision with root package name */
    public final e f17948a;

    /* renamed from: b  reason: collision with root package name */
    public final String f17949b;
    private final h e;
    private final a f;

    /* renamed from: com.dropbox.core.v2.c$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c$1.class */
    final class AnonymousClass1 implements a<ResT> {

        /* renamed from: a  reason: collision with root package name */
        String f17950a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f17951b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f17952c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f17953d;
        final /* synthetic */ String e;
        final /* synthetic */ byte[] f;
        final /* synthetic */ com.dropbox.core.a.c g;
        final /* synthetic */ com.dropbox.core.a.c h;

        AnonymousClass1(boolean z, List list, String str, String str2, byte[] bArr, com.dropbox.core.a.c cVar, com.dropbox.core.a.c cVar2) {
            this.f17951b = z;
            this.f17952c = list;
            this.f17953d = str;
            this.e = str2;
            this.f = bArr;
            this.g = cVar;
            this.h = cVar2;
        }

        /* JADX WARN: Type inference failed for: r0v18, types: [ResT, java.lang.Object] */
        @Override // com.dropbox.core.v2.c.a
        public final ResT a() throws DbxWrappedException, DbxException {
            if (!this.f17951b) {
                c.this.a(this.f17952c);
            }
            a.b a2 = i.a(c.this.e, "OfficialDropboxJavaSDKv2", this.f17953d, this.e, this.f, this.f17952c);
            try {
                int i = a2.f17782a;
                if (i == 200) {
                    return this.g.deserialize(a2.f17783b);
                }
                if (i != 409) {
                    throw i.b(a2);
                }
                throw DbxWrappedException.a(this.h, a2, this.f17950a);
            } catch (JsonProcessingException e) {
                String c2 = i.c(a2);
                throw new BadResponseException(c2, "Bad JSON: " + e.getMessage(), e);
            } catch (IOException e2) {
                throw new NetworkIOException(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c$a.class */
    public interface a<T> {
        T a() throws DbxWrappedException, DbxException;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(h hVar, e eVar, String str, com.dropbox.core.v2.c.a aVar) {
        Objects.requireNonNull(hVar, "requestConfig");
        Objects.requireNonNull(eVar, "host");
        this.e = hVar;
        this.f17948a = eVar;
        this.f17949b = str;
        this.f = aVar;
    }

    private static <T> T a(int i, a<T> aVar) throws DbxWrappedException, DbxException {
        if (i == 0) {
            return aVar.a();
        }
        int i2 = 0;
        while (true) {
            try {
                return aVar.a();
            } catch (RetryException e) {
                if (i2 < i) {
                    int i3 = i2 + 1;
                    long nextInt = e.f17705a + f17947d.nextInt(1000);
                    i2 = i3;
                    if (nextInt > 0) {
                        try {
                            Thread.sleep(nextInt);
                            i2 = i3;
                        } catch (InterruptedException e2) {
                            Thread.currentThread().interrupt();
                            i2 = i3;
                        }
                    }
                } else {
                    throw e;
                }
            }
        }
    }

    private static <T> byte[] a(com.dropbox.core.a.c<T> cVar, T t) throws DbxException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            cVar.serialize((com.dropbox.core.a.c<T>) t, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw d.a("Impossible", (Throwable) e);
        }
    }

    private <T> T b(int i, a<T> aVar) throws DbxWrappedException, DbxException {
        try {
            return (T) a(i, aVar);
        } catch (InvalidAccessTokenException e) {
            if (e.getMessage() != null) {
                if (!b.e.equals(e.f17698a) || !b()) {
                    throw e;
                }
                a();
                return (T) a(i, aVar);
            }
            throw e;
        }
    }

    private static <T> String b(com.dropbox.core.a.c<T> cVar, T t) {
        StringWriter stringWriter = new StringWriter();
        try {
            JsonGenerator createGenerator = f17946c.createGenerator(stringWriter);
            createGenerator.setHighestNonEscapedChar(WebSocketProtocol.PAYLOAD_SHORT);
            cVar.serialize((com.dropbox.core.a.c<T>) t, createGenerator);
            createGenerator.flush();
            return stringWriter.toString();
        } catch (IOException e) {
            throw d.a("Impossible", (Throwable) e);
        }
    }

    private void e() throws DbxException {
        if (c()) {
            try {
                a();
            } catch (DbxOAuthException e) {
                if (!"invalid_grant".equals(e.f17825a.f17833b)) {
                    throw e;
                }
            }
        }
    }

    public final <ArgT> a.c a(String str, String str2, ArgT argt, com.dropbox.core.a.c<ArgT> cVar) throws DbxException {
        String a2 = i.a(str, str2);
        ArrayList arrayList = new ArrayList();
        e();
        a(arrayList);
        i.a(arrayList, this.e);
        i.a(arrayList, this.f);
        arrayList.add(new a.C0354a("Content-Type", Mimetypes.MIMETYPE_OCTET_STREAM));
        List<a.C0354a> a3 = i.a(arrayList, this.e, "OfficialDropboxJavaSDKv2");
        a3.add(new a.C0354a("Dropbox-API-Arg", b(cVar, argt)));
        try {
            return this.e.f17765c.b(a2, a3);
        } catch (IOException e) {
            throw new NetworkIOException(e);
        }
    }

    public abstract com.dropbox.core.oauth.c a() throws DbxException;

    public final <ArgT, ResT, ErrT> ResT a(String str, String str2, ArgT argt, com.dropbox.core.a.c<ArgT> cVar, com.dropbox.core.a.c<ResT> cVar2, com.dropbox.core.a.c<ErrT> cVar3) throws DbxWrappedException, DbxException {
        byte[] a2 = a(cVar, argt);
        ArrayList arrayList = new ArrayList();
        e();
        if (!this.f17948a.e.equals(str)) {
            i.a(arrayList, this.e);
            i.a(arrayList, this.f);
        }
        arrayList.add(new a.C0354a("Content-Type", "application/json; charset=utf-8"));
        int i = this.e.f17766d;
        AnonymousClass1 r0 = new AnonymousClass1(false, arrayList, str, str2, a2, cVar2, cVar3);
        r0.f17950a = this.f17949b;
        return (ResT) b(i, r0);
    }

    protected abstract void a(List<a.C0354a> list);

    abstract boolean b();

    abstract boolean c();

    public final h d() {
        return this.e;
    }
}
