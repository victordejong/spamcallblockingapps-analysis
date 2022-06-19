package com.zhy.http.okhttp.cookie.store;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import okhttp3.Cookie;
/* loaded from: classes2-dex2jar.jar:com/zhy/http/okhttp/cookie/store/SerializableHttpCookie.class */
public class SerializableHttpCookie implements Serializable {
    private static final long serialVersionUID = 6374381323722046732L;
    private transient Cookie clientCookie;
    private final transient Cookie cookie;

    public SerializableHttpCookie(Cookie cookie) {
        this.cookie = cookie;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        String str = (String) objectInputStream.readObject();
        String str2 = (String) objectInputStream.readObject();
        long readLong = objectInputStream.readLong();
        String str3 = (String) objectInputStream.readObject();
        String str4 = (String) objectInputStream.readObject();
        boolean readBoolean = objectInputStream.readBoolean();
        boolean readBoolean2 = objectInputStream.readBoolean();
        boolean readBoolean3 = objectInputStream.readBoolean();
        objectInputStream.readBoolean();
        Cookie.Builder expiresAt = new Cookie.Builder().name(str).value(str2).expiresAt(readLong);
        Cookie.Builder path = (readBoolean3 ? expiresAt.hostOnlyDomain(str3) : expiresAt.domain(str3)).path(str4);
        Cookie.Builder builder = path;
        if (readBoolean) {
            builder = path.secure();
        }
        Cookie.Builder builder2 = builder;
        if (readBoolean2) {
            builder2 = builder.httpOnly();
        }
        this.clientCookie = builder2.build();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.writeObject(this.cookie.name());
        objectOutputStream.writeObject(this.cookie.value());
        objectOutputStream.writeLong(this.cookie.expiresAt());
        objectOutputStream.writeObject(this.cookie.domain());
        objectOutputStream.writeObject(this.cookie.path());
        objectOutputStream.writeBoolean(this.cookie.secure());
        objectOutputStream.writeBoolean(this.cookie.httpOnly());
        objectOutputStream.writeBoolean(this.cookie.hostOnly());
        objectOutputStream.writeBoolean(this.cookie.persistent());
    }

    public Cookie getCookie() {
        Cookie cookie = this.cookie;
        Cookie cookie2 = this.clientCookie;
        if (cookie2 != null) {
            cookie = cookie2;
        }
        return cookie;
    }
}
