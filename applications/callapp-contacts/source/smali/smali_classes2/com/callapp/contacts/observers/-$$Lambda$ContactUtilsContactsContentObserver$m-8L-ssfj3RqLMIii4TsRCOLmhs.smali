.class public final synthetic Lcom/callapp/contacts/observers/-$$Lambda$ContactUtilsContactsContentObserver$m-8L-ssfj3RqLMIii4TsRCOLmhs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/observers/-$$Lambda$ContactUtilsContactsContentObserver$m-8L-ssfj3RqLMIii4TsRCOLmhs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/observers/-$$Lambda$ContactUtilsContactsContentObserver$m-8L-ssfj3RqLMIii4TsRCOLmhs;

    invoke-direct {v0}, Lcom/callapp/contacts/observers/-$$Lambda$ContactUtilsContactsContentObserver$m-8L-ssfj3RqLMIii4TsRCOLmhs;-><init>()V

    sput-object v0, Lcom/callapp/contacts/observers/-$$Lambda$ContactUtilsContactsContentObserver$m-8L-ssfj3RqLMIii4TsRCOLmhs;->INSTANCE:Lcom/callapp/contacts/observers/-$$Lambda$ContactUtilsContactsContentObserver$m-8L-ssfj3RqLMIii4TsRCOLmhs;

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

    invoke-static {p1}, Lcom/callapp/contacts/observers/ContactUtilsContactsContentObserver;->lambda$m-8L-ssfj3RqLMIii4TsRCOLmhs(Lcom/callapp/contacts/framework/dao/RowContext;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
