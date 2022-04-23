package p459j.p460a.p474c0.p491g.p496e0;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.messaging.p078ui.mediapicker.GalleryGridItemView;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: j.a.c0.g.e0.g */
/* loaded from: classes3-dex2jar.jar:j/a/c0/g/e0/g.class */
public class C12039g extends CursorAdapter {

    /* renamed from: a */
    public GalleryGridItemView.AbstractC4828c f26969a;

    public C12039g(Context context, Cursor cursor) {
        super(context, cursor, 0);
    }

    /* renamed from: a */
    public void m7447a(GalleryGridItemView.AbstractC4828c cVar) {
        this.f26969a = cVar;
    }

    @Override // android.widget.CursorAdapter
    public void bindView(View view, Context context, Cursor cursor) {
        C12151d.m6999b(view instanceof GalleryGridItemView);
        ((GalleryGridItemView) view).m27004a(cursor, this.f26969a);
    }

    @Override // android.widget.CursorAdapter
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return LayoutInflater.from(context).inflate(R$layout.gallery_grid_item_view, viewGroup, false);
    }
}
