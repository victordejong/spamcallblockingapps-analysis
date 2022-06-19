.class public Lcom/telguarder/features/numberLookup/NumberLookup;
.super Ljava/lang/Object;
.source "NumberLookup.java"


# instance fields
.field public error:Z

.field public number:Ljava/lang/String;

.field public result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/telguarder/features/numberLookup/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field public securityLevel:Ljava/lang/String;

.field public spam:Lcom/telguarder/features/numberLookup/Spam;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
