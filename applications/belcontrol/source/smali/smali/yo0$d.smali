.class public Lyo0$d;
.super Lyo0$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lyo0$c;-><init>(Lyo0$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lyo0$a;)V
    .locals 0

    invoke-direct {p0}, Lyo0$d;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/facebook/share/model/ShareMediaContent;)V
    .locals 1

    new-instance p1, Lri0;

    const-string v0, "Cannot share ShareMediaContent via web sharing dialogs"

    invoke-direct {p1, v0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Lcom/facebook/share/model/SharePhoto;)V
    .locals 0

    invoke-static {p1, p0}, Lyo0;->m(Lcom/facebook/share/model/SharePhoto;Lyo0$c;)V

    return-void
.end method

.method public q(Lcom/facebook/share/model/ShareVideoContent;)V
    .locals 1

    new-instance p1, Lri0;

    const-string v0, "Cannot share ShareVideoContent via web sharing dialogs"

    invoke-direct {p1, v0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p1
.end method
