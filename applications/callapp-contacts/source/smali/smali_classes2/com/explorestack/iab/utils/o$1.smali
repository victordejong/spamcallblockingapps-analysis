.class final Lcom/explorestack/iab/utils/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/iab/utils/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/utils/o;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/utils/o;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/explorestack/iab/utils/o$1;->a:Lcom/explorestack/iab/utils/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/explorestack/iab/utils/o$1;->a:Lcom/explorestack/iab/utils/o;

    invoke-static {v0}, Lcom/explorestack/iab/utils/o;->a(Lcom/explorestack/iab/utils/o;)V

    .line 40
    iget-object v0, p0, Lcom/explorestack/iab/utils/o$1;->a:Lcom/explorestack/iab/utils/o;

    invoke-static {v0}, Lcom/explorestack/iab/utils/o;->b(Lcom/explorestack/iab/utils/o;)Z

    return-void
.end method
