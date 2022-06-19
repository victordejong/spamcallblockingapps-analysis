.class public final synthetic Lcom/callapp/contacts/manager/-$$Lambda$IncognitoCallManager$ITq5FEEOkhYCPzHV-2781jDqaAg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/manager/-$$Lambda$IncognitoCallManager$ITq5FEEOkhYCPzHV-2781jDqaAg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/manager/-$$Lambda$IncognitoCallManager$ITq5FEEOkhYCPzHV-2781jDqaAg;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/-$$Lambda$IncognitoCallManager$ITq5FEEOkhYCPzHV-2781jDqaAg;-><init>()V

    sput-object v0, Lcom/callapp/contacts/manager/-$$Lambda$IncognitoCallManager$ITq5FEEOkhYCPzHV-2781jDqaAg;->INSTANCE:Lcom/callapp/contacts/manager/-$$Lambda$IncognitoCallManager$ITq5FEEOkhYCPzHV-2781jDqaAg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/callapp/contacts/util/CallLogEntry;

    check-cast p2, Lcom/callapp/contacts/util/CallLogEntry;

    invoke-static {p1, p2}, Lcom/callapp/contacts/manager/IncognitoCallManager;->lambda$onContentChanged$0(Lcom/callapp/contacts/util/CallLogEntry;Lcom/callapp/contacts/util/CallLogEntry;)I

    move-result p1

    return p1
.end method
