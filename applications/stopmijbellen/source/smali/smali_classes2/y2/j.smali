.class public final synthetic Ly2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/a$a;


# instance fields
.field public final synthetic a:Ly2/n;

.field public final synthetic b:Lu2/i;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Ly2/n;Lu2/i;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly2/j;->a:Ly2/n;

    iput-object p2, p0, Ly2/j;->b:Lu2/i;

    iput-wide p3, p0, Ly2/j;->c:J

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Ly2/j;->a:Ly2/n;

    iget-object v1, p0, Ly2/j;->b:Lu2/i;

    iget-wide v2, p0, Ly2/j;->c:J

    .line 1
    iget-object v4, v0, Ly2/n;->c:Lz2/c;

    iget-object v0, v0, Ly2/n;->g:Lb3/a;

    .line 2
    invoke-interface {v0}, Lb3/a;->a()J

    move-result-wide v5

    add-long/2addr v5, v2

    .line 3
    invoke-interface {v4, v1, v5, v6}, Lz2/c;->N(Lu2/i;J)V

    const/4 v0, 0x0

    return-object v0
.end method
