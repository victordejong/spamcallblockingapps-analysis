.class public Lcom/bumptech/glide/load/i/s$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/i/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/i/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/i/o<",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/i/s$d;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public b(Lcom/bumptech/glide/load/i/r;)Lcom/bumptech/glide/load/i/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/i/r;",
            ")",
            "Lcom/bumptech/glide/load/i/n<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/bumptech/glide/load/i/s;

    iget-object v0, p0, Lcom/bumptech/glide/load/i/s$d;->a:Landroid/content/res/Resources;

    invoke-static {}, Lcom/bumptech/glide/load/i/v;->c()Lcom/bumptech/glide/load/i/v;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bumptech/glide/load/i/s;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/i/n;)V

    return-object p1
.end method
