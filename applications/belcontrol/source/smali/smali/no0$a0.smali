.class public Lno0$a0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a0"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno0$a0;->a:Ljava/lang/String;

    iput-object p2, p0, Lno0$a0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lno0$a0;->a:Ljava/lang/String;

    iget-object v1, p0, Lno0$a0;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lno0;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
