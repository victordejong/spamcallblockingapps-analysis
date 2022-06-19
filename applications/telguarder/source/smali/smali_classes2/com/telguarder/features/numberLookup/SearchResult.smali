.class public Lcom/telguarder/features/numberLookup/SearchResult;
.super Lcom/telguarder/features/numberLookup/Result;
.source "SearchResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/features/numberLookup/SearchResult$ResultType;
    }
.end annotation


# instance fields
.field public isFavourite:Z

.field public isFriendFavourite:Z

.field public resultType:Lcom/telguarder/features/numberLookup/SearchResult$ResultType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/telguarder/features/numberLookup/Result;-><init>()V

    return-void
.end method
