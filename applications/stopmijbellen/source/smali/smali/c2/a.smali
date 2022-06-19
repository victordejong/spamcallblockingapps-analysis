.class public final synthetic Lc2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic b:Lc2/a;

.field public static final synthetic c:Lc2/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lc2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc2/a;-><init>(I)V

    sput-object v0, Lc2/a;->b:Lc2/a;

    new-instance v0, Lc2/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lc2/a;-><init>(I)V

    sput-object v0, Lc2/a;->c:Lc2/a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc2/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lc2/a;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lc2/b;->b:Z

    return-void

    .line 2
    :goto_0
    sget v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;->a:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
