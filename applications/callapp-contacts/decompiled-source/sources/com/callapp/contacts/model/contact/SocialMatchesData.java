package com.callapp.contacts.model.contact;

import android.view.View;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.callapp.contacts.manager.Singletons;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/SocialMatchesData.class */
public class SocialMatchesData extends BaseViewTypeData {
    private View.OnClickListener checkBoxListener;
    private DataSource dataSource;
    private String name;
    private int photoResId;
    private String photoUrl;
    private View.OnClickListener pictureListener;
    private int socialBadgeBackgroundColor;
    private int socialBadgeResourceId;
    private int socialNetId;
    private SocialMatchState state = SocialMatchState.SEARCHING;
    private View.OnClickListener sureListener;
    private View.OnClickListener unSureListener;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState.class */
    public enum SocialMatchState {
        SEARCHING,
        NOT_CONNECTED,
        UNKNOWN,
        SURE,
        UNSURE,
        MULTI_MATCH,
        PLACES_SURE,
        AUTO_SELECT,
        HIDE
    }

    public SocialMatchesData(int i, int i2, int i3, int i4) {
        this.socialNetId = i;
        this.socialBadgeResourceId = i2;
        this.socialBadgeBackgroundColor = i3;
        this.photoResId = i4;
    }

    public View.OnClickListener getCheckBoxListener() {
        return this.checkBoxListener;
    }

    public DataSource getDataSource() {
        return this.dataSource;
    }

    public String getName() {
        return this.name;
    }

    public int getPhotoResId() {
        return this.photoResId;
    }

    public String getPhotoUrl() {
        return this.photoUrl;
    }

    public View.OnClickListener getPictureListener() {
        return this.pictureListener;
    }

    public int getSocialBadgeBackgroundColor() {
        return this.socialBadgeBackgroundColor;
    }

    public int getSocialBadgeResourceId() {
        return this.socialBadgeResourceId;
    }

    public String getSocialName() {
        return Singletons.get().getRemoteAccountHelper(this.socialNetId).getName();
    }

    public int getSocialNetId() {
        return this.socialNetId;
    }

    public SocialMatchState getState() {
        return this.state;
    }

    public View.OnClickListener getSureListener() {
        return this.sureListener;
    }

    public View.OnClickListener getUnSureListener() {
        return this.unSureListener;
    }

    @Override // com.callapp.contacts.activity.base.BaseViewTypeData
    public int getViewType() {
        return 13;
    }

    public void setCheckBoxListener(View.OnClickListener onClickListener) {
        this.checkBoxListener = onClickListener;
    }

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setPhotoResId(int i) {
        this.photoResId = i;
    }

    public void setPhotoUrl(String str) {
        this.photoUrl = str;
    }

    public void setPictureListener(View.OnClickListener onClickListener) {
        this.pictureListener = onClickListener;
    }

    public void setState(SocialMatchState socialMatchState) {
        this.state = socialMatchState;
    }

    public void setSureListener(View.OnClickListener onClickListener) {
        this.sureListener = onClickListener;
    }

    public void setUnSureListener(View.OnClickListener onClickListener) {
        this.unSureListener = onClickListener;
    }
}
