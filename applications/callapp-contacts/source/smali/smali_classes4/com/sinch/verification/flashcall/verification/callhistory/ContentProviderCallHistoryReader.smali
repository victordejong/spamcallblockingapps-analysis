.class public final Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0002R\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader;",
        "Lcom/sinch/verification/flashcall/verification/callhistory/CallHistoryReader;",
        "contentResolver",
        "Landroid/content/ContentResolver;",
        "(Landroid/content/ContentResolver;)V",
        "columns",
        "",
        "",
        "[Ljava/lang/String;",
        "readIncomingCalls",
        "",
        "sinceEpoch",
        "",
        "whereClause",
        "Companion",
        "verification-flashcall_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader$Companion;

.field private static final callUri:Landroid/net/Uri;


# instance fields
.field private final columns:[Ljava/lang/String;

.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader;->Companion:Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader$Companion;

    .line 16
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "CallLog.Calls.CONTENT_URI"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader;->callUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 2

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader;->contentResolver:Landroid/content/ContentResolver;

    const-string p1, "date"

    const-string v0, "number"

    const-string v1, "type"

    .line 19
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader;->columns:[Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCallUri$cp()Landroid/net/Uri;
    .locals 1

    .line 12
    sget-object v0, Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader;->callUri:Landroid/net/Uri;

    return-object v0
.end method

.method private final whereClause(J)Ljava/lang/String;
    .locals 0

    .line 44
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "date > "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final readIncomingCalls(J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 23
    iget-object v1, p0, Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader;->contentResolver:Landroid/content/ContentResolver;

    .line 24
    sget-object v2, Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader;->callUri:Landroid/net/Uri;

    .line 25
    iget-object v3, p0, Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader;->columns:[Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sinch/verification/flashcall/verification/callhistory/ContentProviderCallHistoryReader;->whereClause(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date"

    .line 23
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "number"

    .line 31
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    const-string v1, "type"

    .line 32
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 33
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 36
    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cursor.getString(numberIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method
