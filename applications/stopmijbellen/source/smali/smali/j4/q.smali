.class public final Lj4/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/s;


# instance fields
.field public final a:Lo4/s;

.field public final b:Lo4/s;

.field public final c:Lo4/s;


# direct methods
.method public constructor <init>(Lo4/s;Lo4/s;Lo4/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/q;->a:Lo4/s;

    iput-object p2, p0, Lj4/q;->b:Lo4/s;

    iput-object p3, p0, Lj4/q;->c:Lo4/s;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lj4/q;->a:Lo4/s;

    check-cast v0, Lj4/k2;

    .line 1
    invoke-virtual {v0}, Lj4/k2;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lj4/q;->b:Lo4/s;

    invoke-interface {v1}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lj4/q;->c:Lo4/s;

    invoke-interface {v2}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v2

    .line 2
    new-instance v3, Lj4/p;

    check-cast v1, Lj4/r0;

    check-cast v2, Lj4/r1;

    invoke-direct {v3, v0, v1, v2}, Lj4/p;-><init>(Landroid/content/Context;Lj4/r0;Lj4/r1;)V

    return-object v3
.end method
