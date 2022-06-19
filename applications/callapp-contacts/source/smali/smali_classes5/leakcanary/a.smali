.class public abstract enum Lleakcanary/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lleakcanary/a$k;,
        Lleakcanary/a$n;,
        Lleakcanary/a$o;,
        Lleakcanary/a$g;,
        Lleakcanary/a$a;,
        Lleakcanary/a$d;,
        Lleakcanary/a$l;,
        Lleakcanary/a$c;,
        Lleakcanary/a$j;,
        Lleakcanary/a$b;,
        Lleakcanary/a$p;,
        Lleakcanary/a$i;,
        Lleakcanary/a$h;,
        Lleakcanary/a$m;,
        Lleakcanary/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lleakcanary/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0087\u0001\u0018\u0000 \u00172\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0017B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H$R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lleakcanary/AndroidLeakFixes;",
        "",
        "(Ljava/lang/String;I)V",
        "applied",
        "",
        "apply",
        "",
        "application",
        "Landroid/app/Application;",
        "MEDIA_SESSION_LEGACY_HELPER",
        "TEXT_LINE_POOL",
        "USER_MANAGER",
        "FLUSH_HANDLER_THREADS",
        "ACCESSIBILITY_NODE_INFO",
        "CONNECTIVITY_MANAGER",
        "SAMSUNG_CLIPBOARD_MANAGER",
        "BUBBLE_POPUP",
        "LAST_HOVERED_VIEW",
        "ACTIVITY_MANAGER",
        "VIEW_LOCATION_HOLDER",
        "IMM_FOCUSED_VIEW",
        "IMM_CUR_ROOT_VIEW",
        "SPELL_CHECKER",
        "Companion",
        "plumber-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lleakcanary/a;

.field public static final enum ACCESSIBILITY_NODE_INFO:Lleakcanary/a;

.field public static final enum ACTIVITY_MANAGER:Lleakcanary/a;

.field public static final enum BUBBLE_POPUP:Lleakcanary/a;

.field public static final enum CONNECTIVITY_MANAGER:Lleakcanary/a;

.field public static final Companion:Lleakcanary/a$e;

.field public static final enum FLUSH_HANDLER_THREADS:Lleakcanary/a;

.field public static final enum IMM_CUR_ROOT_VIEW:Lleakcanary/a;

.field public static final enum IMM_FOCUSED_VIEW:Lleakcanary/a;

.field public static final enum LAST_HOVERED_VIEW:Lleakcanary/a;

.field private static final LG:Ljava/lang/String; = "LGE"

.field public static final enum MEDIA_SESSION_LEGACY_HELPER:Lleakcanary/a;

.field private static final SAMSUNG:Ljava/lang/String; = "samsung"

.field public static final enum SAMSUNG_CLIPBOARD_MANAGER:Lleakcanary/a;

.field public static final enum SPELL_CHECKER:Lleakcanary/a;

.field public static final enum TEXT_LINE_POOL:Lleakcanary/a;

.field public static final enum USER_MANAGER:Lleakcanary/a;

.field public static final enum VIEW_LOCATION_HOLDER:Lleakcanary/a;

.field private static final backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private applied:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [Lleakcanary/a;

    new-instance v1, Lleakcanary/a$k;

    const-string v2, "MEDIA_SESSION_LEGACY_HELPER"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lleakcanary/a$k;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lleakcanary/a;->MEDIA_SESSION_LEGACY_HELPER:Lleakcanary/a;

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/a$n;

    const-string v2, "TEXT_LINE_POOL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lleakcanary/a$n;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lleakcanary/a;->TEXT_LINE_POOL:Lleakcanary/a;

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/a$o;

    const-string v2, "USER_MANAGER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lleakcanary/a$o;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lleakcanary/a;->USER_MANAGER:Lleakcanary/a;

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/a$g;

    const-string v2, "FLUSH_HANDLER_THREADS"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lleakcanary/a$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lleakcanary/a;->FLUSH_HANDLER_THREADS:Lleakcanary/a;

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/a$a;

    const-string v2, "ACCESSIBILITY_NODE_INFO"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lleakcanary/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lleakcanary/a;->ACCESSIBILITY_NODE_INFO:Lleakcanary/a;

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/a$d;

    const-string v2, "CONNECTIVITY_MANAGER"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lleakcanary/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lleakcanary/a;->CONNECTIVITY_MANAGER:Lleakcanary/a;

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/a$l;

    const-string v2, "SAMSUNG_CLIPBOARD_MANAGER"

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lleakcanary/a$l;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lleakcanary/a;->SAMSUNG_CLIPBOARD_MANAGER:Lleakcanary/a;

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/a$c;

    const-string v2, "BUBBLE_POPUP"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lleakcanary/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lleakcanary/a;->BUBBLE_POPUP:Lleakcanary/a;

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/a$j;

    const-string v2, "LAST_HOVERED_VIEW"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lleakcanary/a$j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lleakcanary/a;->LAST_HOVERED_VIEW:Lleakcanary/a;

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/a$b;

    const-string v2, "ACTIVITY_MANAGER"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Lleakcanary/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lleakcanary/a;->ACTIVITY_MANAGER:Lleakcanary/a;

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/a$p;

    const-string v2, "VIEW_LOCATION_HOLDER"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lleakcanary/a$p;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lleakcanary/a;->VIEW_LOCATION_HOLDER:Lleakcanary/a;

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/a$i;

    const-string v2, "IMM_FOCUSED_VIEW"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lleakcanary/a$i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lleakcanary/a;->IMM_FOCUSED_VIEW:Lleakcanary/a;

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/a$h;

    const-string v2, "IMM_CUR_ROOT_VIEW"

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lleakcanary/a$h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lleakcanary/a;->IMM_CUR_ROOT_VIEW:Lleakcanary/a;

    aput-object v1, v0, v3

    new-instance v1, Lleakcanary/a$m;

    const-string v2, "SPELL_CHECKER"

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lleakcanary/a$m;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lleakcanary/a;->SPELL_CHECKER:Lleakcanary/a;

    aput-object v1, v0, v3

    sput-object v0, Lleakcanary/a;->$VALUES:[Lleakcanary/a;

    new-instance v0, Lleakcanary/a$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lleakcanary/a$e;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lleakcanary/a;->Companion:Lleakcanary/a$e;

    .line 694
    sget-object v0, Lleakcanary/a$f;->a:Lleakcanary/a$f;

    check-cast v0, Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lleakcanary/a;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lleakcanary/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$getApplied$p(Lleakcanary/a;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lleakcanary/a;->applied:Z

    return p0
.end method

.method public static final synthetic access$getBackgroundExecutor$cp()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 43
    sget-object v0, Lleakcanary/a;->backgroundExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static final synthetic access$setApplied$p(Lleakcanary/a;Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lleakcanary/a;->applied:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lleakcanary/a;
    .locals 1

    const-class v0, Lleakcanary/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lleakcanary/a;

    return-object p0
.end method

.method public static values()[Lleakcanary/a;
    .locals 1

    sget-object v0, Lleakcanary/a;->$VALUES:[Lleakcanary/a;

    invoke-virtual {v0}, [Lleakcanary/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lleakcanary/a;

    return-object v0
.end method


# virtual methods
.method protected abstract apply(Landroid/app/Application;)V
.end method
