.class final Lcom/explorestack/iab/utils/Utils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/explorestack/iab/utils/Utils$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/explorestack/iab/utils/Utils$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/explorestack/iab/utils/Utils$2;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/explorestack/iab/utils/Utils$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/explorestack/iab/utils/Utils$2;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/explorestack/iab/utils/Utils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 157
    iget-object v0, p0, Lcom/explorestack/iab/utils/Utils$2;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 158
    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
