package com.telguarder.features.numberLookup;

import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/SearchResult.class */
public class SearchResult extends Result implements Serializable {
    public boolean isFavourite;
    public boolean isFriendFavourite;
    public ResultType resultType;

    /* loaded from: classes2-dex2jar.jar:com/telguarder/features/numberLookup/SearchResult$ResultType.class */
    public enum ResultType {
        EDITORIAL,
        COMPANY,
        PEOPLE
    }
}
