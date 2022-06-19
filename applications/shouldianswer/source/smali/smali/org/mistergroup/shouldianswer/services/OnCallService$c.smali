.class final Lorg/mistergroup/shouldianswer/services/OnCallService$c;
.super Landroid/os/Binder;
.source "OnCallService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/services/OnCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lorg/mistergroup/shouldianswer/services/OnCallService;


# direct methods
.method public constructor <init>(Lorg/mistergroup/shouldianswer/services/OnCallService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/services/OnCallService$c;->a:Lorg/mistergroup/shouldianswer/services/OnCallService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/mistergroup/shouldianswer/services/OnCallService;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/services/OnCallService$c;->a:Lorg/mistergroup/shouldianswer/services/OnCallService;

    return-object v0
.end method
