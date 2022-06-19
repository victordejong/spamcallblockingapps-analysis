.class public Ld2/f1$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/f1;->g(Ld2/l;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/f1;


# direct methods
.method public constructor <init>(Ld2/f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/f1$t;->a:Ld2/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld2/f1$t;->a:Ld2/f1;

    .line 2
    iget-object v1, v0, Ld2/f1;->r:Ld2/l;

    .line 3
    iget-object v2, v1, Ld2/l;->d:Ld2/f4;

    .line 4
    iget-object v1, v1, Ld2/l;->a:Ljava/lang/String;

    const-string v3, "app_id"

    .line 5
    invoke-static {v2, v3, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    iget-object v0, v0, Ld2/f1;->r:Ld2/l;

    .line 7
    iget-object v0, v0, Ld2/l;->c:Ld2/d4;

    const-string v1, "zone_ids"

    .line 8
    invoke-static {v2, v1, v0}, Ld2/e4;->g(Ld2/f4;Ljava/lang/String;Ld2/d4;)Z

    .line 9
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    const-string v1, "options"

    .line 10
    invoke-static {v0, v1, v2}, Ld2/e4;->h(Ld2/f4;Ljava/lang/String;Ld2/f4;)Z

    .line 11
    invoke-virtual {p1, v0}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    return-void
.end method
