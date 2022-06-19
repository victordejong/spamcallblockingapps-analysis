.class public Lyo0$b;
.super Lyo0$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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

    invoke-direct {p0}, Lyo0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public o(Lcom/facebook/share/model/ShareStoryContent;)V
    .locals 0

    invoke-static {p1, p0}, Lyo0;->l(Lcom/facebook/share/model/ShareStoryContent;Lyo0$c;)V

    return-void
.end method
