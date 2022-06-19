package com.truecaller.common.tag.network;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/tag/network/TagRestModel.class */
public class TagRestModel {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/tag/network/TagRestModel$Context.class */
    public @interface Context {
        public static final int AFTER_CALL = 1;
        public static final int BUSINESS_PROFILE = 4;
        public static final int DETAIL_VIEW = 2;
        public static final int NONE = 0;
        public static final int PROFILE = 3;
    }

    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/tag/network/TagRestModel$Keyword.class */
    public static class Keyword {
        public double relevance;
        public String term;
    }

    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/tag/network/TagRestModel$KeywordsResponse.class */
    public static class KeywordsResponse {
        public List<TagKeywords> data;
        public int version;
    }

    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/tag/network/TagRestModel$ProfileTagsResponse.class */
    public static class ProfileTagsResponse {
        public String phoneNumber;
        public List<Long> tags;
    }

    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/tag/network/TagRestModel$SetProfileTagsBody.class */
    public static class SetProfileTagsBody {
        public List<Long> tagIds;
    }

    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/tag/network/TagRestModel$SetTagsRequest.class */
    public static class SetTagsRequest {
        public Integer context;
        public long phoneNumber;
        public Integer searchType;
        public List<Integer> tagIds;
        public Long timestamp;
    }

    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/tag/network/TagRestModel$Tag.class */
    public static class Tag {
        public String color;
        public String iconUrl;

        /* renamed from: id */
        public int f10983id;
        public String name;
        public int parentId;
    }

    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/tag/network/TagRestModel$TagKeywords.class */
    public static class TagKeywords {
        public List<Keyword> keywords;
        public int tagId;
    }

    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/tag/network/TagRestModel$TagsResponse.class */
    public static class TagsResponse {
        public List<Tag> data;
    }
}
