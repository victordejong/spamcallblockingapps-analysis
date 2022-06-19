.class final Lcom/facebook/appevents/f/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/math/BigDecimal;

.field b:Ljava/util/Currency;

.field c:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/facebook/appevents/f/d$a;->a:Ljava/math/BigDecimal;

    .line 198
    iput-object p2, p0, Lcom/facebook/appevents/f/d$a;->b:Ljava/util/Currency;

    .line 199
    iput-object p3, p0, Lcom/facebook/appevents/f/d$a;->c:Landroid/os/Bundle;

    return-void
.end method
