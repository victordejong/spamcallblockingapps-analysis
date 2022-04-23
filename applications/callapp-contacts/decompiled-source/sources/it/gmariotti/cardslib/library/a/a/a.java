package it.gmariotti.cardslib.library.a.a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import it.gmariotti.cardslib.library.a.b;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/a/a/a.class */
public abstract class a {
    protected it.gmariotti.cardslib.library.view.a.a mCardView;
    protected Context mContext;
    protected View mInnerView;
    protected b mParentCard;
    protected String mTitle;
    protected int mInnerLayout = -1;
    protected String mId = null;
    protected int type = 0;

    public a(Context context) {
        this.mContext = context;
    }

    public it.gmariotti.cardslib.library.view.a.a getCardView() {
        return this.mCardView;
    }

    public Context getContext() {
        return this.mContext;
    }

    public String getId() {
        return this.mId;
    }

    public int getInnerLayout() {
        return this.mInnerLayout;
    }

    public View getInnerView(Context context, ViewGroup viewGroup) {
        if (this.mInnerLayout < 0) {
            return null;
        }
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(this.mInnerLayout, viewGroup, false);
        this.mInnerView = inflate;
        return inflate;
    }

    public b getParentCard() {
        return this.mParentCard;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public int getType() {
        return this.type;
    }

    public void setCardView(it.gmariotti.cardslib.library.view.a.a aVar) {
        this.mCardView = aVar;
    }

    public void setContext(Context context) {
        this.mContext = context;
    }

    public void setId(String str) {
        this.mId = str;
    }

    public void setInnerLayout(int i) {
        this.mInnerLayout = i;
    }

    public void setParentCard(b bVar) {
        this.mParentCard = bVar;
    }

    public void setTitle(String str) {
        this.mTitle = str;
    }

    public void setType(int i) {
        this.type = i;
    }
}
