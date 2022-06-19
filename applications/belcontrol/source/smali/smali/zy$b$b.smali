.class public Lzy$b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzy$b;->m(Lxy;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzy$b$d;

.field public final synthetic b:Lxy;

.field public final synthetic c:Ljava/util/Collection;

.field public final synthetic d:Lzy$b;


# direct methods
.method public constructor <init>(Lzy$b;Lzy$b$d;Lxy;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Lzy$b$b;->d:Lzy$b;

    iput-object p2, p0, Lzy$b$b;->a:Lzy$b$d;

    iput-object p3, p0, Lzy$b$b;->b:Lxy;

    iput-object p4, p0, Lzy$b$b;->c:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lzy$b$b;->a:Lzy$b$d;

    iget-object v1, p0, Lzy$b$b;->d:Lzy$b;

    iget-object v2, p0, Lzy$b$b;->b:Lxy;

    iget-object v3, p0, Lzy$b$b;->c:Ljava/util/Collection;

    invoke-interface {v0, v1, v2, v3}, Lzy$b$d;->a(Lzy$b;Lxy;Ljava/util/Collection;)V

    return-void
.end method
