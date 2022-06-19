package com.callapp.contacts.model.contact.social;

import com.callapp.common.model.json.JSONInstagramImage;
import com.callapp.common.model.json.JSONInstagramImages;
import com.callapp.common.model.json.JSONInstagramMedia;
import com.callapp.common.model.json.JSONWebsite;
import com.callapp.contacts.model.UploadedPhoto;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/model/contact/social/InstagramData.class */
public class InstagramData extends SocialData {
    private static final long serialVersionUID = 1;
    private String bio;
    private String latestMediaCaption;
    private List<JSONInstagramMedia> latestMedias;
    private List<UploadedPhoto> uploadedPhotosUrl;
    private JSONWebsite website;
    private boolean isPrivate = false;
    private Boolean isGloballyPrivate = null;

    private void updateUploadedPhotosUrl() {
        JSONInstagramImage standard_resolution;
        this.uploadedPhotosUrl = new ArrayList();
        if (CollectionUtils.m26068b(this.latestMedias)) {
            for (JSONInstagramMedia jSONInstagramMedia : this.latestMedias) {
                JSONInstagramImages images = jSONInstagramMedia.getImages();
                if (images != null && (standard_resolution = images.getStandard_resolution()) != null && StringUtils.m26045b((CharSequence) standard_resolution.getUrl())) {
                    UploadedPhoto uploadedPhoto = new UploadedPhoto();
                    uploadedPhoto.setUrl(standard_resolution.getUrl());
                    uploadedPhoto.setCreatedTime(new Date(jSONInstagramMedia.getCreated_time() * 1000));
                    this.uploadedPhotosUrl.add(uploadedPhoto);
                }
            }
        }
    }

    @Override // com.callapp.contacts.model.contact.social.SocialData
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj) || !(obj instanceof InstagramData)) {
            return false;
        }
        InstagramData instagramData = (InstagramData) obj;
        String str = this.bio;
        if (str == null) {
            if (instagramData.bio != null) {
                return false;
            }
        } else if (!str.equals(instagramData.bio)) {
            return false;
        }
        String str2 = this.latestMediaCaption;
        if (str2 == null) {
            if (instagramData.latestMediaCaption != null) {
                return false;
            }
        } else if (!str2.equals(instagramData.latestMediaCaption)) {
            return false;
        }
        JSONWebsite jSONWebsite = this.website;
        if (jSONWebsite == null) {
            if (instagramData.website != null) {
                return false;
            }
        } else if (!jSONWebsite.equals(instagramData.website)) {
            return false;
        }
        List<JSONInstagramMedia> list = this.latestMedias;
        return list == null ? instagramData.latestMedias == null : list.equals(instagramData.latestMedias);
    }

    public String getBio() {
        return this.bio;
    }

    public Boolean getIsGloballyPrivate() {
        return this.isGloballyPrivate;
    }

    public String getLatestMediaCaption() {
        return this.latestMediaCaption;
    }

    public List<JSONInstagramMedia> getLatestMedias() {
        return this.latestMedias;
    }

    public List<UploadedPhoto> getUploadedPhotosUrl() {
        if (CollectionUtils.m26076a(this.uploadedPhotosUrl)) {
            updateUploadedPhotosUrl();
        }
        return this.uploadedPhotosUrl;
    }

    public JSONWebsite getWebsite() {
        return this.website;
    }

    @Override // com.callapp.contacts.model.contact.social.SocialData
    public int hashCode() {
        int hashCode = super.hashCode();
        String str = this.bio;
        int i = 0;
        int hashCode2 = str == null ? 0 : str.hashCode();
        String str2 = this.latestMediaCaption;
        int hashCode3 = str2 == null ? 0 : str2.hashCode();
        JSONWebsite jSONWebsite = this.website;
        int hashCode4 = jSONWebsite == null ? 0 : jSONWebsite.hashCode();
        List<JSONInstagramMedia> list = this.latestMedias;
        if (list != null) {
            i = list.hashCode();
        }
        return (((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i;
    }

    public boolean isPrivate() {
        return this.isPrivate;
    }

    public void setBio(String str) {
        this.bio = str;
        setDirty(true);
    }

    public void setIsGloballyPrivate(Boolean bool) {
        this.isGloballyPrivate = bool;
        setDirty(true);
    }

    public void setLatestMediaCaption(String str) {
        this.latestMediaCaption = str;
        setDirty(true);
    }

    public void setLatestMedias(List<JSONInstagramMedia> list) {
        this.latestMedias = list;
        updateUploadedPhotosUrl();
    }

    public void setPrivate(boolean z) {
        this.isPrivate = z;
        setDirty(true);
    }

    public void setWebsite(JSONWebsite jSONWebsite) {
        this.website = jSONWebsite;
        setDirty(true);
    }
}
