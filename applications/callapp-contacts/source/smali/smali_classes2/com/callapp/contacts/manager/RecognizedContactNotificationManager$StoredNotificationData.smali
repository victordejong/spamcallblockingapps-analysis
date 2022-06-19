.class public Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoredNotificationData"
.end annotation


# instance fields
.field public final a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

.field private final c:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

.field private final d:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;->b:Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    .line 56
    iput-object p3, p0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;->c:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    .line 57
    iput-object p4, p0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;->d:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;-><init>(Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/ContactDataChangeListener;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)V

    return-void
.end method

.method public static synthetic a(Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;)Lcom/callapp/contacts/model/contact/ContactDataChangeListener;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;->c:Lcom/callapp/contacts/model/contact/ContactDataChangeListener;

    return-object p0
.end method
