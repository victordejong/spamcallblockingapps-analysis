.class public Ln7/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7/s;->n(Lk7/j;Ln7/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lu7/b;

.field public final synthetic b:Ln7/s$c;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ln7/s;


# direct methods
.method public constructor <init>(Ln7/s;Lu7/b;Ln7/s$c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln7/s$a;->d:Ln7/s;

    iput-object p2, p0, Ln7/s$a;->a:Lu7/b;

    iput-object p3, p0, Ln7/s$a;->b:Ln7/s$c;

    iput-object p4, p0, Ln7/s$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln7/s$a;->d:Ln7/s;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Ln7/s$a;->a:Lu7/b;

    iget-object v1, p0, Ln7/s$a;->b:Ln7/s$c;

    invoke-virtual {v0, v1}, Lu7/b;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Ln7/s$a;->d:Ln7/s;

    iget-object v1, p0, Ln7/s$a;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ln7/s;->l(Ljava/lang/String;)V

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
