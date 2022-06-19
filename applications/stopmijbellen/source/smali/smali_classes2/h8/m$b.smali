.class public Lh8/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx8/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh8/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ls8/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ls8/g;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/config/FlowManager;->f(Ljava/lang/Class;)Lb9/b;

    move-result-object p1

    check-cast p1, Lh8/m;

    .line 2
    iget-object p1, p1, Lh8/m;->f:Ls8/f;

    return-object p1
.end method
