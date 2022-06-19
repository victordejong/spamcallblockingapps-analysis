.class public final Lol0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lol0;->g(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lol0$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lol0$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lol0$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lol0$a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [F

    invoke-static {v0, v1, v2}, Lol0;->a(Ljava/lang/String;Ljava/lang/String;[F)V

    return-void
.end method
