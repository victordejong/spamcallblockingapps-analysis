.class public Lhk0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhk0;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhk0;


# direct methods
.method public constructor <init>(Lhk0;)V
    .locals 0

    iput-object p1, p0, Lhk0$a;->a:Lhk0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lhk0$a;->a:Lhk0;

    invoke-static {v0}, Lhk0;->a(Lhk0;)V

    return-void
.end method
