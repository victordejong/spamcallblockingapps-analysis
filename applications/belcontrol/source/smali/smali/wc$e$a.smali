.class public Lwc$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwc$e;-><init>(Lwc$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lwc$e;


# direct methods
.method public constructor <init>(Lwc$e;)V
    .locals 0

    iput-object p1, p0, Lwc$e$a;->a:Lwc$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    iget-object p1, p0, Lwc$e$a;->a:Lwc$e;

    iget-object p1, p1, Lwc$c;->a:Lwc$a;

    invoke-virtual {p1}, Lwc$a;->a()V

    return-void
.end method
