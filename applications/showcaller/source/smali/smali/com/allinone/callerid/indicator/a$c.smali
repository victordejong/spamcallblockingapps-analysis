.class Lcom/allinone/callerid/indicator/a$c;
.super Ljava/lang/Object;
.source "BallClipRotatePulseIndicator.java"

# interfaces
.implements Lc/f/a/i$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/indicator/a;->a()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/indicator/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/indicator/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/indicator/a$c;->a:Lcom/allinone/callerid/indicator/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/f/a/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/indicator/a$c;->a:Lcom/allinone/callerid/indicator/a;

    invoke-virtual {p1}, Lc/f/a/i;->A()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/allinone/callerid/indicator/a;->e:F

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/indicator/a$c;->a:Lcom/allinone/callerid/indicator/a;

    invoke-virtual {p1}, Lcom/allinone/callerid/indicator/BaseIndicatorController;->g()V

    return-void
.end method
