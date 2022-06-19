.class Lcom/callerid/block/start/EZGuideTipsActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/customview/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/EZGuideTipsActivity;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/start/EZGuideTipsActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/EZGuideTipsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/EZGuideTipsActivity$d;->a:Lcom/callerid/block/start/EZGuideTipsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "first_enter"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/start/EZGuideTipsActivity$d;->a:Lcom/callerid/block/start/EZGuideTipsActivity;

    invoke-static {p1}, Lcom/callerid/block/start/EZGuideTipsActivity;->S(Lcom/callerid/block/start/EZGuideTipsActivity;)Lcom/callerid/block/customview/DotIndicator;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/callerid/block/customview/DotIndicator;->f(I)V

    const-string p1, "\u9996\u6b21\u8fdb\u5165\u542f\u52a8\u98753"

    invoke-static {v1, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v1, "first_enter_lead3"

    invoke-virtual {p1, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/start/EZGuideTipsActivity$d;->a:Lcom/callerid/block/start/EZGuideTipsActivity;

    invoke-static {p1}, Lcom/callerid/block/start/EZGuideTipsActivity;->X(Lcom/callerid/block/start/EZGuideTipsActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v1, "first_enter_guide3_online"

    invoke-virtual {p1, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/start/EZGuideTipsActivity$d;->a:Lcom/callerid/block/start/EZGuideTipsActivity;

    invoke-static {p1, v0}, Lcom/callerid/block/start/EZGuideTipsActivity;->Y(Lcom/callerid/block/start/EZGuideTipsActivity;Z)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/start/EZGuideTipsActivity$d;->a:Lcom/callerid/block/start/EZGuideTipsActivity;

    invoke-static {p1}, Lcom/callerid/block/start/EZGuideTipsActivity;->S(Lcom/callerid/block/start/EZGuideTipsActivity;)Lcom/callerid/block/customview/DotIndicator;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/callerid/block/customview/DotIndicator;->f(I)V

    const-string p1, "\u9996\u6b21\u8fdb\u5165\u542f\u52a8\u98752"

    invoke-static {v1, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v1, "first_enter_lead2"

    invoke-virtual {p1, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/start/EZGuideTipsActivity$d;->a:Lcom/callerid/block/start/EZGuideTipsActivity;

    invoke-static {p1}, Lcom/callerid/block/start/EZGuideTipsActivity;->T(Lcom/callerid/block/start/EZGuideTipsActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object p1

    const-string v1, "first_enter_guide2_online"

    invoke-virtual {p1, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/callerid/block/start/EZGuideTipsActivity$d;->a:Lcom/callerid/block/start/EZGuideTipsActivity;

    invoke-static {p1, v0}, Lcom/callerid/block/start/EZGuideTipsActivity;->U(Lcom/callerid/block/start/EZGuideTipsActivity;Z)Z

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/callerid/block/start/EZGuideTipsActivity$d;->a:Lcom/callerid/block/start/EZGuideTipsActivity;

    invoke-static {p1, v0}, Lcom/callerid/block/start/EZGuideTipsActivity;->W(Lcom/callerid/block/start/EZGuideTipsActivity;Z)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/callerid/block/start/EZGuideTipsActivity$d;->a:Lcom/callerid/block/start/EZGuideTipsActivity;

    invoke-static {p1}, Lcom/callerid/block/start/EZGuideTipsActivity;->S(Lcom/callerid/block/start/EZGuideTipsActivity;)Lcom/callerid/block/customview/DotIndicator;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callerid/block/customview/DotIndicator;->f(I)V

    :goto_1
    return-void
.end method
