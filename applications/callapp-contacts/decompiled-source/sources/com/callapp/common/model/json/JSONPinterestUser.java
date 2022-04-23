package com.callapp.common.model.json;

import java.io.Serializable;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/callapp/common/model/json/JSONPinterestUser.class */
public class JSONPinterestUser implements Serializable {
    private static final long serialVersionUID = -4235345847794912423L;
    private String bio;
    private Integer boardsCount;
    private Date createdAt;
    private String firstName;
    private Integer followersCount;
    private Integer followingCount;
    private Integer imageHeight;
    private String imageUrl;
    private Integer imageWidth;
    private String lastName;
    private Integer likesCount;
    private Integer pinCount;
    private String pubProfileUrl;
    private String username;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JSONPinterestUser jSONPinterestUser = (JSONPinterestUser) obj;
        String str = this.username;
        if (str != null) {
            if (!str.equals(jSONPinterestUser.username)) {
                return false;
            }
        } else if (jSONPinterestUser.username != null) {
            return false;
        }
        String str2 = this.firstName;
        if (str2 != null) {
            if (!str2.equals(jSONPinterestUser.firstName)) {
                return false;
            }
        } else if (jSONPinterestUser.firstName != null) {
            return false;
        }
        String str3 = this.lastName;
        if (str3 != null) {
            if (!str3.equals(jSONPinterestUser.lastName)) {
                return false;
            }
        } else if (jSONPinterestUser.lastName != null) {
            return false;
        }
        String str4 = this.bio;
        if (str4 != null) {
            if (!str4.equals(jSONPinterestUser.bio)) {
                return false;
            }
        } else if (jSONPinterestUser.bio != null) {
            return false;
        }
        Date date = this.createdAt;
        if (date != null) {
            if (!date.equals(jSONPinterestUser.createdAt)) {
                return false;
            }
        } else if (jSONPinterestUser.createdAt != null) {
            return false;
        }
        String str5 = this.imageUrl;
        if (str5 != null) {
            if (!str5.equals(jSONPinterestUser.imageUrl)) {
                return false;
            }
        } else if (jSONPinterestUser.imageUrl != null) {
            return false;
        }
        Integer num = this.imageWidth;
        if (num != null) {
            if (!num.equals(jSONPinterestUser.imageWidth)) {
                return false;
            }
        } else if (jSONPinterestUser.imageWidth != null) {
            return false;
        }
        Integer num2 = this.imageHeight;
        if (num2 != null) {
            if (!num2.equals(jSONPinterestUser.imageHeight)) {
                return false;
            }
        } else if (jSONPinterestUser.imageHeight != null) {
            return false;
        }
        Integer num3 = this.followersCount;
        if (num3 != null) {
            if (!num3.equals(jSONPinterestUser.followersCount)) {
                return false;
            }
        } else if (jSONPinterestUser.followersCount != null) {
            return false;
        }
        Integer num4 = this.followingCount;
        if (num4 != null) {
            if (!num4.equals(jSONPinterestUser.followingCount)) {
                return false;
            }
        } else if (jSONPinterestUser.followingCount != null) {
            return false;
        }
        Integer num5 = this.pinCount;
        if (num5 != null) {
            if (!num5.equals(jSONPinterestUser.pinCount)) {
                return false;
            }
        } else if (jSONPinterestUser.pinCount != null) {
            return false;
        }
        Integer num6 = this.likesCount;
        if (num6 != null) {
            if (!num6.equals(jSONPinterestUser.likesCount)) {
                return false;
            }
        } else if (jSONPinterestUser.likesCount != null) {
            return false;
        }
        Integer num7 = this.boardsCount;
        if (num7 != null) {
            if (!num7.equals(jSONPinterestUser.boardsCount)) {
                return false;
            }
        } else if (jSONPinterestUser.boardsCount != null) {
            return false;
        }
        String str6 = this.pubProfileUrl;
        String str7 = jSONPinterestUser.pubProfileUrl;
        return str6 != null ? str6.equals(str7) : str7 == null;
    }

    public String getBio() {
        return this.bio;
    }

    public Integer getBoardsCount() {
        return this.boardsCount;
    }

    public Date getCreatedAt() {
        return this.createdAt;
    }

    public String getFirstName() {
        return this.firstName;
    }

    public Integer getFollowersCount() {
        return this.followersCount;
    }

    public Integer getFollowingCount() {
        return this.followingCount;
    }

    public Integer getImageHeight() {
        return this.imageHeight;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public Integer getImageWidth() {
        return this.imageWidth;
    }

    public String getLastName() {
        return this.lastName;
    }

    public Integer getLikesCount() {
        return this.likesCount;
    }

    public Integer getPinCount() {
        return this.pinCount;
    }

    public String getPubProfileUrl() {
        return this.pubProfileUrl;
    }

    public String getUsername() {
        return this.username;
    }

    public int hashCode() {
        String str = this.username;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.firstName;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.lastName;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.bio;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        Date date = this.createdAt;
        int hashCode5 = date != null ? date.hashCode() : 0;
        String str5 = this.imageUrl;
        int hashCode6 = str5 != null ? str5.hashCode() : 0;
        Integer num = this.imageWidth;
        int hashCode7 = num != null ? num.hashCode() : 0;
        Integer num2 = this.imageHeight;
        int hashCode8 = num2 != null ? num2.hashCode() : 0;
        Integer num3 = this.followersCount;
        int hashCode9 = num3 != null ? num3.hashCode() : 0;
        Integer num4 = this.followingCount;
        int hashCode10 = num4 != null ? num4.hashCode() : 0;
        Integer num5 = this.pinCount;
        int hashCode11 = num5 != null ? num5.hashCode() : 0;
        Integer num6 = this.likesCount;
        int hashCode12 = num6 != null ? num6.hashCode() : 0;
        Integer num7 = this.boardsCount;
        int hashCode13 = num7 != null ? num7.hashCode() : 0;
        String str6 = this.pubProfileUrl;
        if (str6 != null) {
            i = str6.hashCode();
        }
        return (((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + hashCode12) * 31) + hashCode13) * 31) + i;
    }

    public void setBio(String str) {
        this.bio = str;
    }

    public void setBoardsCount(Integer num) {
        this.boardsCount = num;
    }

    public void setCreatedAt(Date date) {
        this.createdAt = date;
    }

    public void setFirstName(String str) {
        this.firstName = str;
    }

    public void setFollowersCount(Integer num) {
        this.followersCount = num;
    }

    public void setFollowingCount(Integer num) {
        this.followingCount = num;
    }

    public void setImageHeight(Integer num) {
        this.imageHeight = num;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public void setImageWidth(Integer num) {
        this.imageWidth = num;
    }

    public void setLastName(String str) {
        this.lastName = str;
    }

    public void setLikesCount(Integer num) {
        this.likesCount = num;
    }

    public void setPinCount(Integer num) {
        this.pinCount = num;
    }

    public void setPubProfileUrl(String str) {
        this.pubProfileUrl = str;
    }

    public void setUsername(String str) {
        this.username = str;
    }
}
