.class public Lcom/callapp/contacts/manager/analytics/AbTestUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0xc

.field private static b:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()I
    .locals 3

    const-class v0, Lcom/callapp/contacts/manager/analytics/AbTestUtils;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->bC:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sget v2, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->a:I

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 32
    sget-object v2, Lcom/callapp/contacts/manager/preferences/Prefs;->bC:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v2, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    .line 35
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getGroupDimension()I
    .locals 2

    .line 17
    sget-object v0, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->b:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 18
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bC:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->b:Ljava/lang/Integer;

    .line 21
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->b:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 22
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->b:Ljava/lang/Integer;

    .line 25
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v1, Lcom/callapp/contacts/manager/analytics/AbTestUtils;->a:I

    rem-int/2addr v0, v1

    return v0
.end method
