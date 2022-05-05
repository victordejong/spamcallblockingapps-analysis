package p081h.p119d.p120a.p124s.p125h;

import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: h.d.a.s.h.h */
/* loaded from: classes-dex2jar.jar:h/d/a/s/h/h.class */
public class C5821h extends AbstractC5811a<InputStream> {
    public C5821h(AssetManager assetManager, String str) {
        super(assetManager, str);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5811a
    /* renamed from: a */
    public InputStream mo24304a(AssetManager assetManager, String str) throws IOException {
        return assetManager.open(str);
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo24302a(InputStream inputStream) throws IOException {
        inputStream.close();
    }
}
