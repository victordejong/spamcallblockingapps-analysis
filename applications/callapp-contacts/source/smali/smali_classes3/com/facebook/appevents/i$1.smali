.class final Lcom/facebook/appevents/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/i;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 50
    sget-object v0, Lcom/facebook/internal/l$b;->AAM:Lcom/facebook/internal/l$b;

    new-instance v1, Lcom/facebook/appevents/i$1$1;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/i$1$1;-><init>(Lcom/facebook/appevents/i$1;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;Lcom/facebook/internal/l$a;)V

    .line 61
    sget-object v0, Lcom/facebook/internal/l$b;->RestrictiveDataFiltering:Lcom/facebook/internal/l$b;

    new-instance v1, Lcom/facebook/appevents/i$1$2;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/i$1$2;-><init>(Lcom/facebook/appevents/i$1;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;Lcom/facebook/internal/l$a;)V

    .line 72
    sget-object v0, Lcom/facebook/internal/l$b;->PrivacyProtection:Lcom/facebook/internal/l$b;

    new-instance v1, Lcom/facebook/appevents/i$1$3;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/i$1$3;-><init>(Lcom/facebook/appevents/i$1;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;Lcom/facebook/internal/l$a;)V

    .line 83
    sget-object v0, Lcom/facebook/internal/l$b;->EventDeactivation:Lcom/facebook/internal/l$b;

    new-instance v1, Lcom/facebook/appevents/i$1$4;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/i$1$4;-><init>(Lcom/facebook/appevents/i$1;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;Lcom/facebook/internal/l$a;)V

    .line 94
    sget-object v0, Lcom/facebook/internal/l$b;->IapLogging:Lcom/facebook/internal/l$b;

    new-instance v1, Lcom/facebook/appevents/i$1$5;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/i$1$5;-><init>(Lcom/facebook/appevents/i$1;)V

    invoke-static {v0, v1}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;Lcom/facebook/internal/l$a;)V

    return-void
.end method
