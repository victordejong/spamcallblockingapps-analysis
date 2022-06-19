.class public final synthetic Lcom/callapp/contacts/util/-$$Lambda$CallLogUtils$RQ7aAfwQ7ixdupwYTjjaIvFRLek;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/util/-$$Lambda$CallLogUtils$RQ7aAfwQ7ixdupwYTjjaIvFRLek;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/util/-$$Lambda$CallLogUtils$RQ7aAfwQ7ixdupwYTjjaIvFRLek;

    invoke-direct {v0}, Lcom/callapp/contacts/util/-$$Lambda$CallLogUtils$RQ7aAfwQ7ixdupwYTjjaIvFRLek;-><init>()V

    sput-object v0, Lcom/callapp/contacts/util/-$$Lambda$CallLogUtils$RQ7aAfwQ7ixdupwYTjjaIvFRLek;->INSTANCE:Lcom/callapp/contacts/util/-$$Lambda$CallLogUtils$RQ7aAfwQ7ixdupwYTjjaIvFRLek;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRow(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/callapp/contacts/util/CallLogUtils;->lambda$RQ7aAfwQ7ixdupwYTjjaIvFRLek(Lcom/callapp/contacts/framework/dao/RowContext;)Lcom/callapp/contacts/util/CallLogEntry;

    move-result-object p1

    return-object p1
.end method
