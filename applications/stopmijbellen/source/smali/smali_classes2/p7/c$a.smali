.class public Lp7/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/c;-><init>(Landroid/net/Uri;Lp7/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp7/c;


# direct methods
.method public constructor <init>(Lp7/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp7/c$a;->a:Lp7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "no-cache"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lp7/c$a;->a:Lp7/c;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Lp7/c;->b:Z

    goto :goto_0

    :cond_0
    const-string v0, "max-age"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lp7/c$a;->a:Lp7/c;

    invoke-static {p2}, Lp7/a;->b(Ljava/lang/String;)I

    move-result p2

    .line 6
    iput p2, p1, Lp7/c;->c:I

    goto :goto_0

    :cond_1
    const-string v0, "max-stale"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object p1, p0, Lp7/c$a;->a:Lp7/c;

    invoke-static {p2}, Lp7/a;->b(Ljava/lang/String;)I

    move-result p2

    .line 9
    iput p2, p1, Lp7/c;->d:I

    goto :goto_0

    :cond_2
    const-string v0, "min-fresh"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object p1, p0, Lp7/c$a;->a:Lp7/c;

    invoke-static {p2}, Lp7/a;->b(Ljava/lang/String;)I

    move-result p2

    .line 12
    iput p2, p1, Lp7/c;->e:I

    goto :goto_0

    :cond_3
    const-string p2, "only-if-cached"

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    iget-object p1, p0, Lp7/c$a;->a:Lp7/c;

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    return-void
.end method
