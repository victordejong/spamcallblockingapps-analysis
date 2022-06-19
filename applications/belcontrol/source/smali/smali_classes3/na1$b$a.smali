.class public Lna1$b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lna1$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Loa1;

.field public final synthetic b:Lpa1;

.field public final synthetic c:Lna1$b;


# direct methods
.method public constructor <init>(Lna1$b;Loa1;Lpa1;)V
    .locals 0

    iput-object p1, p0, Lna1$b$a;->c:Lna1$b;

    iput-object p2, p0, Lna1$b$a;->a:Loa1;

    iput-object p3, p0, Lna1$b$a;->b:Lpa1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lna1$b$a;->c:Lna1$b;

    iget-object v0, v0, Lna1$b;->c:Lna1$h;

    iget-object v1, p0, Lna1$b$a;->a:Loa1;

    iget-object v2, p0, Lna1$b$a;->b:Lpa1;

    invoke-interface {v0, v1, v2}, Lna1$h;->a(Loa1;Lpa1;)V

    return-void
.end method
