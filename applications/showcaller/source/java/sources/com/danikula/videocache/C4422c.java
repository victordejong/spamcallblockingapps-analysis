package com.danikula.videocache;

import com.danikula.videocache.p227q.AbstractC4445a;
import com.danikula.videocache.p227q.AbstractC4447c;
import com.danikula.videocache.p228r.AbstractC4456b;
import com.danikula.videocache.p229s.AbstractC4459c;
import java.io.File;
/* renamed from: com.danikula.videocache.c */
/* loaded from: classes-dex2jar.jar:com/danikula/videocache/c.class */
public class C4422c {

    /* renamed from: a */
    public final File f13501a;

    /* renamed from: b */
    public final AbstractC4447c f13502b;

    /* renamed from: c */
    public final AbstractC4445a f13503c;

    /* renamed from: d */
    public final AbstractC4459c f13504d;

    /* renamed from: e */
    public final AbstractC4456b f13505e;

    public C4422c(File file, AbstractC4447c abstractC4447c, AbstractC4445a abstractC4445a, AbstractC4459c abstractC4459c, AbstractC4456b abstractC4456b) {
        this.f13501a = file;
        this.f13502b = abstractC4447c;
        this.f13503c = abstractC4445a;
        this.f13504d = abstractC4459c;
        this.f13505e = abstractC4456b;
    }

    /* renamed from: a */
    public File m22534a(String str) {
        return new File(this.f13501a, this.f13502b.mo22429a(str));
    }
}
