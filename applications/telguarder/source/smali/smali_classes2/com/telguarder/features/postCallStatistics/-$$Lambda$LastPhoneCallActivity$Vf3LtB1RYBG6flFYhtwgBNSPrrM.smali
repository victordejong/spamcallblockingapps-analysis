.class public final synthetic Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$Vf3LtB1RYBG6flFYhtwgBNSPrrM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static final synthetic INSTANCE:Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$Vf3LtB1RYBG6flFYhtwgBNSPrrM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$Vf3LtB1RYBG6flFYhtwgBNSPrrM;

    invoke-direct {v0}, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$Vf3LtB1RYBG6flFYhtwgBNSPrrM;-><init>()V

    sput-object v0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$Vf3LtB1RYBG6flFYhtwgBNSPrrM;->INSTANCE:Lcom/telguarder/features/postCallStatistics/-$$Lambda$LastPhoneCallActivity$Vf3LtB1RYBG6flFYhtwgBNSPrrM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->lambda$onCreate$1(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
