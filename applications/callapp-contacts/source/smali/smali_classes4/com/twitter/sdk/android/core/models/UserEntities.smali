.class public Lcom/twitter/sdk/android/core/models/UserEntities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/models/UserEntities$UrlEntities;
    }
.end annotation


# instance fields
.field public final description:Lcom/twitter/sdk/android/core/models/UserEntities$UrlEntities;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "description"
    .end annotation
.end field

.field public final url:Lcom/twitter/sdk/android/core/models/UserEntities$UrlEntities;
    .annotation runtime Lcom/google/gson/annotations/b;
        a = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/models/UserEntities$UrlEntities;Lcom/twitter/sdk/android/core/models/UserEntities$UrlEntities;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/twitter/sdk/android/core/models/UserEntities;->url:Lcom/twitter/sdk/android/core/models/UserEntities$UrlEntities;

    .line 38
    iput-object p2, p0, Lcom/twitter/sdk/android/core/models/UserEntities;->description:Lcom/twitter/sdk/android/core/models/UserEntities$UrlEntities;

    return-void
.end method
