.class public final Lcom/bumptech/glide/load/i/k;
.super Ljava/lang/Object;
.source "MediaStoreFileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/i/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/i/k$a;,
        Lcom/bumptech/glide/load/i/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/i/n<",
        "Landroid/net/Uri;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/i/k;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/i/k;->d(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/i/n$a;
    .locals 0

    .line 1
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/i/k;->c(Landroid/net/Uri;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/i/n$a;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/net/Uri;IILcom/bumptech/glide/load/e;)Lcom/bumptech/glide/load/i/n$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lcom/bumptech/glide/load/e;",
            ")",
            "Lcom/bumptech/glide/load/i/n$a<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Lcom/bumptech/glide/load/i/n$a;

    new-instance p3, Lcom/bumptech/glide/o/d;

    invoke-direct {p3, p1}, Lcom/bumptech/glide/o/d;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lcom/bumptech/glide/load/i/k$b;

    iget-object v0, p0, Lcom/bumptech/glide/load/i/k;->a:Landroid/content/Context;

    invoke-direct {p4, v0, p1}, Lcom/bumptech/glide/load/i/k$b;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/i/n$a;-><init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/data/d;)V

    return-object p2
.end method

.method public d(Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/load/data/o/b;->b(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
