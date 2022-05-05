package com.privacystar.core.service.network.model.response;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import com.privacystar.core.data.model.CallerIdFields;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/network/model/response/LookupResponse.class */
public class LookupResponse implements Serializable {
    @SerializedName("category")
    @Expose
    private String category;
    @SerializedName("category_id")
    @Expose
    private Integer categoryId;
    @SerializedName(CallerIdFields.CITY)
    @Expose
    private String city;
    @SerializedName("name")
    @Expose
    private String name;
    @SerializedName("number_of_blocks")
    @Expose
    private Integer numberOfBlocks;
    @SerializedName("number_of_complaints")
    @Expose
    private Integer numberOfComplaints;
    @SerializedName("number_of_lookups")
    @Expose
    private Integer numberOfLookups;
    @SerializedName("offender_name")
    @Expose
    private String offenderName;
    @SerializedName("spam_score")
    @Expose
    private Integer spamScore;
    @SerializedName("state")
    @Expose
    private String state;

    public String getCategory() {
        return this.category;
    }

    public Integer getCategoryId() {
        return this.categoryId;
    }

    public String getCity() {
        return this.city;
    }

    public String getName() {
        return this.name;
    }

    public Integer getNumberOfBlocks() {
        return this.numberOfBlocks;
    }

    public Integer getNumberOfComplaints() {
        return this.numberOfComplaints;
    }

    public Integer getNumberOfLookups() {
        return this.numberOfLookups;
    }

    public String getOffenderName() {
        return this.offenderName;
    }

    public Integer getSpamScore() {
        return this.spamScore;
    }

    public String getState() {
        return this.state;
    }

    public void setCategory(String str) {
        this.category = str;
    }

    public void setCategoryId(Integer num) {
        this.categoryId = num;
    }

    public void setCity(String str) {
        this.city = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setNumberOfBlocks(Integer num) {
        this.numberOfBlocks = num;
    }

    public void setNumberOfComplaints(Integer num) {
        this.numberOfComplaints = num;
    }

    public void setNumberOfLookups(Integer num) {
        this.numberOfLookups = num;
    }

    public void setOffenderName(String str) {
        this.offenderName = str;
    }

    public void setSpamScore(Integer num) {
        this.spamScore = num;
    }

    public void setState(String str) {
        this.state = str;
    }

    public String toString() {
        return new GsonBuilder().setPrettyPrinting().create().toJson(this);
    }

    public LookupResponse withCategory(String str) {
        this.category = str;
        return this;
    }

    public LookupResponse withCategoryId(Integer num) {
        this.categoryId = num;
        return this;
    }

    public LookupResponse withCity(String str) {
        this.city = str;
        return this;
    }

    public LookupResponse withName(String str) {
        this.name = str;
        return this;
    }

    public LookupResponse withNumberOfBlocks(Integer num) {
        this.numberOfBlocks = num;
        return this;
    }

    public LookupResponse withNumberOfComplaints(Integer num) {
        this.numberOfComplaints = num;
        return this;
    }

    public LookupResponse withNumberOfLookups(Integer num) {
        this.numberOfLookups = num;
        return this;
    }

    public LookupResponse withOffenderName(String str) {
        this.offenderName = str;
        return this;
    }

    public LookupResponse withSpamScore(Integer num) {
        this.spamScore = num;
        return this;
    }

    public LookupResponse withState(String str) {
        this.state = str;
        return this;
    }
}
