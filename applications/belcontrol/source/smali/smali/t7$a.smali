.class public Lt7$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt7;->i(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lt7$d;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lt7$d;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lt7$a;->a:Lt7$d;

    iput-object p2, p0, Lt7$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lt7$a;->a:Lt7$d;

    iget-object v1, p0, Lt7$a;->b:Ljava/lang/Object;

    iput-object v1, v0, Lt7$d;->a:Ljava/lang/Object;

    return-void
.end method
