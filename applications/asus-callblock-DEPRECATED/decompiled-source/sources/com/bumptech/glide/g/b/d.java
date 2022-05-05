package com.bumptech.glide.g.b;

import android.widget.ImageView;
import com.bumptech.glide.g.a.c;
import com.bumptech.glide.load.resource.a.b;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/b/d.class */
public class d extends e<b> {

    /* renamed from: a  reason: collision with root package name */
    private int f3433a;

    /* renamed from: b  reason: collision with root package name */
    private b f3434b;

    public d(ImageView imageView) {
        this(imageView, -1);
    }

    public d(ImageView imageView, int i) {
        super(imageView);
        this.f3433a = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't rename method to resolve collision */
    public void a(b bVar) {
        ((ImageView) this.d).setImageDrawable(bVar);
    }

    public void onResourceReady(b bVar, c<? super b> cVar) {
        b bVar2 = bVar;
        if (!bVar.a()) {
            float width = ((ImageView) this.d).getWidth() / ((ImageView) this.d).getHeight();
            float intrinsicWidth = bVar.getIntrinsicWidth() / bVar.getIntrinsicHeight();
            bVar2 = bVar;
            if (Math.abs(width - 1.0f) <= 0.05f) {
                bVar2 = bVar;
                if (Math.abs(intrinsicWidth - 1.0f) <= 0.05f) {
                    bVar2 = new i(bVar, ((ImageView) this.d).getWidth());
                }
            }
        }
        super.onResourceReady((d) bVar2, (c<? super d>) cVar);
        this.f3434b = bVar2;
        bVar2.a(this.f3433a);
        bVar2.start();
    }

    @Override // com.bumptech.glide.g.b.e, com.bumptech.glide.g.b.j
    public /* bridge */ /* synthetic */ void onResourceReady(Object obj, c cVar) {
        onResourceReady((b) obj, (c<? super b>) cVar);
    }

    @Override // com.bumptech.glide.g.b.a, com.bumptech.glide.d.h
    public void onStart() {
        if (this.f3434b != null) {
            this.f3434b.start();
        }
    }

    @Override // com.bumptech.glide.g.b.a, com.bumptech.glide.d.h
    public void onStop() {
        if (this.f3434b != null) {
            this.f3434b.stop();
        }
    }
}
