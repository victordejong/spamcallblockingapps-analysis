package p193e.p194a.p195a.p200c.p213l8;

import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.camera.view.PreviewView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.common.collect.Collections2;
import com.truecaller.C2752R;
import com.truecaller.messaging.conversation.atttachmentPicker.AttachmentPicker;
import e.f.a.n.g;
import e.f.a.n.q.d.i;
import e.f.a.n.q.d.y;
import java.util.ArrayList;
import java.util.Objects;
import p1727n3.p1758e.p1767b.C25898c1;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1059m3.C18179p0;
import p193e.p194a.p1059m3.C18182r;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p195a.p200c.C5787v5;
import s1.z.c.l;
/* renamed from: e.a.a.c.l8.r */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/l8/r.class */
public final class C5511r extends RecyclerView.AbstractC0317g<RecyclerView.AbstractC0313c0> {

    /* renamed from: a */
    public final ArrayList<Object> f18675a;

    /* renamed from: b */
    public final AttachmentPicker.AbstractC4170b f18676b;

    /* renamed from: c */
    public final AttachmentPicker.AbstractC4171c f18677c;

    /* renamed from: d */
    public final C25898c1 f18678d;

    /* renamed from: e */
    public final boolean f18679e;

    public C5511r(ArrayList<Object> arrayList, AttachmentPicker.AbstractC4170b abstractC4170b, AttachmentPicker.AbstractC4171c abstractC4171c, C25898c1 c25898c1, boolean z) {
        l.e(arrayList, "items");
        l.e(abstractC4170b, "cameraCallback");
        l.e(abstractC4171c, "fileCallback");
        l.e(c25898c1, "preview");
        this.f18675a = arrayList;
        this.f18676b = abstractC4170b;
        this.f18677c = abstractC4171c;
        this.f18678d = c25898c1;
        this.f18679e = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f18675a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        int i2;
        Object obj = this.f18675a.get(i);
        if (obj instanceof C5494g) {
            i2 = 2;
        } else if (obj instanceof C5490d) {
            i2 = 1;
        } else if (obj instanceof C5501k) {
            i2 = 3;
        } else if (!(obj instanceof C5505n)) {
            throw new IllegalStateException("Item type not found");
        } else {
            i2 = 4;
        }
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        l.e(abstractC0313c0, "viewholder");
        int itemViewType = abstractC0313c0.getItemViewType();
        if (itemViewType == 1) {
            C5491e c5491e = (C5491e) abstractC0313c0;
            AttachmentPicker.AbstractC4170b abstractC4170b = this.f18676b;
            C25898c1 c25898c1 = this.f18678d;
            l.e(abstractC4170b, "cameraCallback");
            l.e(c25898c1, "preview");
            if (((C5787v5) abstractC4170b).f19379f.mo13825h("android.permission.CAMERA")) {
                PreviewView previewView = ((C18182r) c5491e.f18644a.m13418a(c5491e, C5491e.f18643b[0])).f51402c;
                l.d(previewView, "binding.previewView");
                c25898c1.m2917r(previewView.getSurfaceProvider());
            }
            ((C18182r) c5491e.f18644a.m13418a(c5491e, C5491e.f18643b[0])).f51401b.setOnClickListener(new View$OnClickListenerC5493f(abstractC4170b));
        } else if (itemViewType == 2) {
            C5508p c5508p = (C5508p) abstractC0313c0;
            AttachmentPicker.AbstractC4171c abstractC4171c = this.f18677c;
            Object obj = this.f18675a.get(i);
            Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.messaging.conversation.atttachmentPicker.GalleryItem");
            C5494g c5494g = (C5494g) obj;
            l.e(abstractC4171c, "fileCallback");
            l.e(c5494g, "galleryItem");
            ((C21852d) C17891a1.C17902k.m15664K1(c5508p.f18670b).m8960z(c5494g.f18647b).mo8097k(C2752R.C2753drawable.ic_red_error).m8111C(new g(Collections2.newArrayList(new i(), new y(c5508p.f18671c))), true)).m8427O(c5508p.m33004N4().f51375a);
            if (c5494g.f18646a == 3) {
                TextView textView = c5508p.m33004N4().f51376b;
                l.d(textView, "binding.videoDurationText");
                C19286f.m13683U(textView, true);
                TextView textView2 = c5508p.m33004N4().f51376b;
                l.d(textView2, "binding.videoDurationText");
                textView2.setText(c5494g.f18648c);
            } else {
                TextView textView3 = c5508p.m33004N4().f51376b;
                l.d(textView3, "binding.videoDurationText");
                C19286f.m13683U(textView3, false);
            }
            c5508p.m33004N4().f51375a.setOnClickListener(new View$OnClickListenerC5510q(c5508p, abstractC4171c, c5494g));
        } else if (itemViewType != 3) {
            if (itemViewType != 4) {
                throw new IllegalStateException("ViewType not found");
            }
            C5506o c5506o = (C5506o) abstractC0313c0;
            AppCompatTextView appCompatTextView = ((C18179p0) c5506o.f18667b.m13418a(c5506o, C5506o.f18665c[0])).f51391a;
            l.d(appCompatTextView, "binding.text");
            appCompatTextView.setText(c5506o.f18666a.getString(C2752R.string.GalleryInactiveText));
        } else {
            C5502l c5502l = (C5502l) abstractC0313c0;
            AttachmentPicker.AbstractC4171c abstractC4171c2 = this.f18677c;
            l.e(abstractC4171c2, "fileCallback");
            AppCompatTextView appCompatTextView2 = c5502l.m33007N4().f51383a;
            l.d(appCompatTextView2, "binding.permissionRequestText");
            ViewGroup.LayoutParams layoutParams = appCompatTextView2.getLayoutParams();
            l.d(layoutParams, "binding.permissionRequestText.layoutParams");
            layoutParams.width = c5502l.f18662e;
            AppCompatTextView appCompatTextView3 = c5502l.m33007N4().f51383a;
            l.d(appCompatTextView3, "binding.permissionRequestText");
            appCompatTextView3.setLayoutParams(layoutParams);
            c5502l.m33007N4().f51383a.setOnClickListener(new View$OnClickListenerC5504m(abstractC4171c2));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        C5506o c5506o;
        l.e(viewGroup, "viewgroup");
        if (i == 1) {
            c5506o = new C5491e(C19286f.m13668k(viewGroup, C2752R.layout.camera_item, false));
        } else if (i == 2) {
            c5506o = new C5508p(C19286f.m13668k(viewGroup, C2752R.layout.gallery_item, false));
        } else if (i == 3) {
            c5506o = new C5502l(C19286f.m13668k(viewGroup, C2752R.layout.gallery_preview_request_permission, false), this.f18679e);
        } else if (i != 4) {
            throw new IllegalStateException("ViewType not found");
        } else {
            c5506o = new C5506o(C19286f.m13668k(viewGroup, C2752R.layout.gallery_text_item, false));
        }
        return c5506o;
    }
}
