.class public Lna1$c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lna1$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lna1$c;


# direct methods
.method public constructor <init>(Lna1$c;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lna1$c$b;->b:Lna1$c;

    iput-object p2, p0, Lna1$c$b;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lna1$c$b;->b:Lna1$c;

    iget-object v1, v0, Lna1$c;->d:Lna1$e;

    iget-object v0, v0, Lna1$c;->a:Ljava/util/List;

    iget-object v2, p0, Lna1$c$b;->a:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Lna1$e;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
