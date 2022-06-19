.class final Lorg/mistergroup/shouldianswer/services/incall/c$b$a;
.super Ljava/lang/Object;
.source "MyInCallPresenter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mistergroup/shouldianswer/services/incall/c$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/services/incall/c$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mistergroup/shouldianswer/services/incall/c$b$a;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/services/incall/c$b$a;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/services/incall/c$b$a;->a:Lorg/mistergroup/shouldianswer/services/incall/c$b$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 426
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/incall/c;->d()V

    return-void
.end method
