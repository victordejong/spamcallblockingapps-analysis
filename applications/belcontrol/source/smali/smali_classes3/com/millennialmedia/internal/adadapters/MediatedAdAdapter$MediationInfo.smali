.class public Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediationInfo"
.end annotation


# instance fields
.field public networkId:Ljava/lang/String;

.field public siteId:Ljava/lang/String;

.field public spaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;->networkId:Ljava/lang/String;

    iput-object p2, p0, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;->siteId:Ljava/lang/String;

    iput-object p3, p0, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter$MediationInfo;->spaceId:Ljava/lang/String;

    return-void
.end method
