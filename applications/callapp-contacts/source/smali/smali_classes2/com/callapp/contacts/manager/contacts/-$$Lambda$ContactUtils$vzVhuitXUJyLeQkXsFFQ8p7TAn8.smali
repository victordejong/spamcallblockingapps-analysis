.class public final synthetic Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactUtils$vzVhuitXUJyLeQkXsFFQ8p7TAn8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/framework/dao/RowCallback;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactUtils$vzVhuitXUJyLeQkXsFFQ8p7TAn8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactUtils$vzVhuitXUJyLeQkXsFFQ8p7TAn8;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactUtils$vzVhuitXUJyLeQkXsFFQ8p7TAn8;-><init>()V

    sput-object v0, Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactUtils$vzVhuitXUJyLeQkXsFFQ8p7TAn8;->INSTANCE:Lcom/callapp/contacts/manager/contacts/-$$Lambda$ContactUtils$vzVhuitXUJyLeQkXsFFQ8p7TAn8;

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

    invoke-static {p1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->lambda$vzVhuitXUJyLeQkXsFFQ8p7TAn8(Lcom/callapp/contacts/framework/dao/RowContext;)Lcom/callapp/framework/phone/Phone;

    move-result-object p1

    return-object p1
.end method
