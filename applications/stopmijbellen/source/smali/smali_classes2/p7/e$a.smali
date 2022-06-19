.class public Lp7/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/e;-><init>(Landroid/net/Uri;Lp7/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp7/e;


# direct methods
.method public constructor <init>(Lp7/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp7/e$a;->a:Lp7/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "no-cache"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lp7/e$a;->a:Lp7/e;

    .line 3
    iput-boolean v1, p1, Lp7/e;->h:Z

    goto :goto_0

    :cond_0
    const-string v0, "no-store"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lp7/e$a;->a:Lp7/e;

    .line 6
    iput-boolean v1, p1, Lp7/e;->i:Z

    goto :goto_0

    :cond_1
    const-string v0, "max-age"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object p1, p0, Lp7/e$a;->a:Lp7/e;

    invoke-static {p2}, Lp7/a;->b(Ljava/lang/String;)I

    move-result p2

    .line 9
    iput p2, p1, Lp7/e;->j:I

    goto :goto_0

    :cond_2
    const-string v0, "s-maxage"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object p1, p0, Lp7/e$a;->a:Lp7/e;

    invoke-static {p2}, Lp7/a;->b(Ljava/lang/String;)I

    move-result p2

    .line 12
    iput p2, p1, Lp7/e;->k:I

    goto :goto_0

    :cond_3
    const-string p2, "public"

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 14
    iget-object p1, p0, Lp7/e$a;->a:Lp7/e;

    .line 15
    iput-boolean v1, p1, Lp7/e;->l:Z

    goto :goto_0

    :cond_4
    const-string p2, "must-revalidate"

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    iget-object p1, p0, Lp7/e$a;->a:Lp7/e;

    .line 18
    iput-boolean v1, p1, Lp7/e;->m:Z

    :cond_5
    :goto_0
    return-void
.end method
