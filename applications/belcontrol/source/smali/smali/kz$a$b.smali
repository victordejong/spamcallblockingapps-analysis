.class public Lkz$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkz$a;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkz$a;


# direct methods
.method public constructor <init>(Lkz$a;)V
    .locals 0

    iput-object p1, p0, Lkz$a$b;->a:Lkz$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lkz$a$b;->a:Lkz$a;

    iget-object v1, v0, Lkz$a;->i:Lkz;

    invoke-virtual {v1, v0}, Lkz;->K(Lkz$a;)V

    return-void
.end method
