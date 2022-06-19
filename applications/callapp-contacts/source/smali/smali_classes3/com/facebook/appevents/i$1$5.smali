.class final Lcom/facebook/appevents/i$1$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/i$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/appevents/i$1;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/i$1;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/facebook/appevents/i$1$5;->a:Lcom/facebook/appevents/i$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 100
    invoke-static {}, Lcom/facebook/appevents/d/c;->a()V

    :cond_0
    return-void
.end method
