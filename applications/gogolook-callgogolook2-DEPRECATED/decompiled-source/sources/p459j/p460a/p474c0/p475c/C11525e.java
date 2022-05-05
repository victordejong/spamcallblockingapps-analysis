package p459j.p460a.p474c0.p475c;
/* renamed from: j.a.c0.c.e */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/e.class */
public class C11525e {

    /* renamed from: j.a.c0.c.e$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/e$a.class */
    public interface AbstractC11526a {

        /* renamed from: a */
        public static final String[] f25747a = {"uri", "_display_name", "contentUri", "thumbnailUri", "contentType", "display_destination", "received_timestamp", "message_status"};
    }

    /* renamed from: a */
    public static final String m9269a() {
        return "CREATE VIEW conversation_image_parts_view AS SELECT messages.conversation_id as conversation_id, parts.uri as uri, participants.full_name as _display_name, parts.uri as contentUri,  NULL as thumbnailUri, parts.content_type as contentType, participants.display_destination as display_destination, messages.received_timestamp as received_timestamp, messages.message_status as message_status  FROM messages LEFT JOIN parts ON (messages._id=parts.message_id)  LEFT JOIN participants ON (messages.sender_id=participants._id) WHERE parts.content_type like 'image/%' ORDER BY messages.received_timestamp ASC, parts._id ASC";
    }

    /* renamed from: b */
    public static final String m9268b() {
        return "conversation_image_parts_view";
    }
}
