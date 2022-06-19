.class public Lkz$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkz$a;->d()V
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

    iput-object p1, p0, Lkz$a$a;->a:Lkz$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lkz$a$a;->a:Lkz$a;

    invoke-virtual {v0}, Lkz$a;->e()V

    return-void
.end method
